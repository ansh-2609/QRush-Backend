const db = require('../../utils/databaseUtils');

module.exports = class Instrument {
    constructor(id, image, options1, options2, options3, options4, correctAnswer, hint) {
        this.id = id;
        this.image = image;
        this.options1 = options1;
        this.options2 = options2;
        this.options3 = options3;
        this.options4 = options4;
        this.correctAnswer = correctAnswer;
        this.hint = hint;
    }

    static fetchAll() {
        return db.execute('SELECT * FROM identify_instrument');
    }

};