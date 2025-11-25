const db = require('../../utils/databaseUtils');

module.exports = class Technology {
    constructor(id, question, options1, options2, options3, options4, answer) {
        this.id = id;
        this.question = question;
        this.options1 = options1;
        this.options2 = options2;
        this.options3 = options3;
        this.options4 = options4;
        this.answer = answer;
    }

    static fetchAll() {
        return db.execute('SELECT * FROM technology');
    }

};