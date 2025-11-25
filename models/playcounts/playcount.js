const db = require('../../utils/databaseUtils');

module.exports = class PlayCount {
    constructor(id, category, playcount) {
        this.id = id;
        this.category = category;
        this.playcount = playcount; 
    }

    // Get all play counts
    static fetchAll() {
        return db.execute('SELECT * FROM playcount'); 
    }

    static fetchByCategory(category) {
        return db.execute(`SELECT * FROM playcount WHERE category = '${category}'`);
    }


    // Increment play count for a specific category
    static increment(category) {
        console.log('increment called');
        return db.execute(`
            UPDATE playcount 
            SET playcounts = playcounts + 1 
            WHERE category = ?
        `, [category]);
    }

}; 