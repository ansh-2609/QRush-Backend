const db = require('../../utils/databaseUtils');

module.exports = class Complete_Status {
    constructor(id, category, isCompleted) {
        this.id = id;
        this.category = category;
        this.isCompleted = isCompleted; 
    }

    // Get all play counts
    static fetchAll() {
        return db.execute('SELECT * FROM complete_status'); 
    }

    static fetchByCategory(category) {
        return db.execute(`SELECT * FROM complete_status WHERE category = '${category}'`);
    }


    static update(category) {
        console.log('Complete status updated');
        return db.execute(`
            UPDATE complete_status 
            SET isCompleted = 1
            WHERE category = ?
        `, [category]);
    }

}; 