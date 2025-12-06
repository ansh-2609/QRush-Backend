const db = require('../../utils/databaseUtils');

module.exports = class CStatus {
    constructor(id, plants, animals, planets, technology, science, geography, generalknowledge, travel, environment, space) {
        this.id = id;
        this.plants = plants;
        this.animals = animals;
        this.planets = planets;
        this.technology = technology;
        this.science = science; 
        this.geography = geography;
        this.generalknowledge = generalknowledge;
        this.travel = travel;
        this.environment = environment;
        this.space = space;
    }

    static fetchAll() {
        return db.execute('SELECT * FROM c_status');
    }

    static insert(id) {
  return db.execute(
    `INSERT INTO c_status 
     (id, plants, animals, planets, technology, science, geography, generalknowledge, travel, environment, space)
     VALUES (?, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)`,
    [id]
  );
}

    static fetchByCategoryAndUser(category, userId) {
      const query = `SELECT ${category} FROM c_status WHERE id = ?`;
      return db.execute(query, [userId]);
    }

    static updateByCategoryAndUser(category, userId) {
      const query = `UPDATE c_status SET ${category} = 1 WHERE id = ?`;
      return db.execute(query, [userId]);
    }

};