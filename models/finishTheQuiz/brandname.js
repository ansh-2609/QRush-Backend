const db = require('../../utils/databaseUtils');

module.exports = class Brandname {
    constructor(id, question, answer) {
        this.id = id;
        this.question = question;
        this.answer = answer; 
    }

    static fetchAll() {
        return db.execute('SELECT * FROM brandname');
    }

};