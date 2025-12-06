const db = require('../../utils/databaseUtils');

module.exports = class FinishQuizStatus {
    constructor(id, landmark, brandname, capitalcity, fact, inventor) {
        this.id = id;
        this.landmark = landmark;
        this.brandname = brandname;
        this.capitalcity = capitalcity;
        this.fact = fact;
        this.inventor = inventor;
    }

    static fetchAll() {
        return db.execute('SELECT * FROM finish_quiz_status');
    }

    static insert(id) {
        return db.execute(
            `INSERT INTO finish_quiz_status 
            (id, landmark, brandname, capitalcity, fact, inventor)
            VALUES (?, 0, 0, 0, 0, 0)`,
            [id]
        );
    }

    static fetchByCategoryAndUser(category, userId) {
      const query = `SELECT ${category} FROM finish_quiz_status WHERE id = ?`;
      return db.execute(query, [userId]);
    }

    static updateByCategoryAndUser(category, userId) {
      const query = `UPDATE finish_quiz_status SET ${category} = 1 WHERE id = ?`;
      return db.execute(query, [userId]);
    }

};