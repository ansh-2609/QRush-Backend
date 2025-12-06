const db = require('../../utils/databaseUtils');

module.exports = class words {
    constructor(id, word, meaning) {
        this.id = id;
        this.word = word;
        this.meaning = meaning;
    }

    static fetchAWord(id) {
        return db.execute('SELECT * FROM words WHERE id = ?', [id]);
    }
};