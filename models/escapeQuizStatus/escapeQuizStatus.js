const db = require('../../utils/databaseUtils');

module.exports = class EscapeQuizStatus {
    constructor(id, temple, island, lab) {
        this.id = id;
        this.temple = temple;
        this.island = island;
        this.lab = lab;
    }

    static fetchAll() {
        return db.execute('SELECT * FROM escape_quiz_status');
    }

    static insert(id) {
      return db.execute(
        `INSERT INTO escape_quiz_status 
        (id, temple, island, lab)
        VALUES (?, 0, 0, 0)`,
        [id]
      );
    }

    static fetchByCategoryAndUser(category, userId) {
      const query = `SELECT ${category} FROM escape_quiz_status WHERE id = ?`;
      return db.execute(query, [userId]);
    }

    static updateByCategoryAndUser(category, userId) {
      const query = `UPDATE escape_quiz_status SET ${category} = 1 WHERE id = ?`;
      return db.execute(query, [userId]);
    }

};