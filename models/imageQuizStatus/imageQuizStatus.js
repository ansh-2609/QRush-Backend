const db = require('../../utils/databaseUtils');

module.exports = class ImageQuizStatus {
    constructor(id, landmarks, flags, animals, plants, cars, sports, instruments) {
        this.id = id;
        this.landmarks = landmarks;
        this.flags = flags;
        this.animals = animals;
        this.plants = plants;
        this.cars = cars;
        this.sports = sports;
        this.instruments = instruments;
    }

    static fetchAll() {
        return db.execute('SELECT * FROM image_quiz_status');
    }

    static insert(id) {
      return db.execute(
        `INSERT INTO image_quiz_status 
        (id, landmarks, flags, animals, plants, cars, sports, instruments)
        VALUES (?, 0, 0, 0, 0, 0, 0, 0)`,
        [id]
      );
    }

    static fetchByCategoryAndUser(category, userId) {
      const query = `SELECT ${category} FROM image_quiz_status WHERE id = ?`;
      return db.execute(query, [userId]);
    }

    static updateByCategoryAndUser(category, userId) {
      const query = `UPDATE image_quiz_status SET ${category} = 1 WHERE id = ?`;
      return db.execute(query, [userId]);
    }

};