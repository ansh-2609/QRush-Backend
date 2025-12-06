const db = require('../../utils/databaseUtils');

module.exports = class PlayCount {
    constructor(id, category, playcount) {
        this.id = id;
        this.category = category;
        this.playcount = playcount; 
    }

    static fetchAll() {
        return db.execute('SELECT * FROM playcount'); 
    }

    static fetchByCategory(category) {
        return db.execute(`SELECT * FROM playcount WHERE category = '${category}'`);
    }


    static increment(category) {
        return db.execute(`
            UPDATE playcount 
            SET playcounts = playcounts + 1 
            WHERE category = ?
        `, [category]);
    }

}; 