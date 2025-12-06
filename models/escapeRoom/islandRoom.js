const db = require('../../utils/databaseUtils');

module.exports = class IslandRoom {
    constructor(id, title, scenario, clues, answer, solution, hint, difficulty, theme) {
        this.id = id;
        this.title = title;
        this.scenario = scenario;
        this.clues = clues;
        this.answer = answer;
        this.solution = solution;
        this.hint = hint;
        this.difficulty = difficulty;
        this.theme = theme;
    }

    static fetchAll() {
        return db.execute('SELECT * FROM island_puzzles');
    }

};