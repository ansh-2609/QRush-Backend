const db = require('../../utils/databaseUtils');

module.exports = class Badges {
    constructor(id, name, description, category, icon,rarity) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.category = category;
        this.icon = icon;
        this.rarity = rarity;
    }

    static fetchAll() {
        return db.execute('SELECT * FROM badges');
    }

};