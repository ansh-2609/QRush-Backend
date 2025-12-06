const db = require('../../utils/databaseUtils');

module.exports = class User {
  constructor(id, firstName, lastName, username, email, password, quizplayed, categoryQuizPlayed, imageQuizPlayed, finishQuizPlayed, escapeQuizPlayed) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.username = username;
    this.email = email;
    this.password = password;
    this.quizplayed = quizplayed;
    this.categoryQuizPlayed = categoryQuizPlayed;
    this.imageQuizPlayed = imageQuizPlayed;
    this.finishQuizPlayed = finishQuizPlayed;
    this.escapeQuizPlayed = escapeQuizPlayed;
  }

  static fetchAll() {
    return db.execute("SELECT * FROM users");
  }

  insert() {
    return db.execute(
      "INSERT INTO users (firstname, lastname, username, email, password, quizplayed, categoryQuizPlayed, imageQuizPlayed, finishQuizPlayed, escapeQuizPlayed) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
      [this.firstName, this.lastName, this.username, this.email, this.password, 0, 0, 0, 0, 0]
    );
  }

  static fetchUsername() {
    return db.execute("SELECT username FROM users");
  }

  static fetchEmail() {
    return db.execute("SELECT email FROM users");
  }

  static async findUser(email) {
    const [rows] = await db.execute("SELECT * FROM users WHERE email = ?", [
      email,
    ]);
    return rows.length > 0 ? rows[0] : null;
  }

  static async fetchQuizPlayed(id) {
    return db.execute(
      `SELECT quizplayed FROM users WHERE id = ?`,
      [id]
    );
  }

  static async updateQuizPlayed(id) {
    return db.execute(
      `UPDATE users 
       SET quizplayed = quizplayed + 1 
       WHERE id = ?`,
      [id]
    ); 
  }

  static async fetchCategoryQuizPlayed(id) {
    return db.execute(
      `SELECT categoryQuizPlayed FROM users WHERE id = ?`,
      [id]
    );
  }

  static async setCategoryQuizPlayed(id) {
    return db.execute(
      `UPDATE users 
       SET categoryQuizPlayed = categoryQuizPlayed + 1 
       WHERE id = ?`,
      [id]
    );
  }

  static async fetchImageQuizPlayed(id) {
    return db.execute(
      `SELECT imageQuizPlayed FROM users WHERE id = ?`,
      [id]
    );
  }

  static async setImageQuizPlayed(id) {
    return db.execute(
      `UPDATE users 
       SET imageQuizPlayed = imageQuizPlayed + 1 
       WHERE id = ?`,
      [id]
    );
  }
  static async fetchFinishQuizPlayed(id) {
    return db.execute(
      `SELECT finishQuizPlayed FROM users WHERE id = ?`,
      [id]
    );
  }

  static async setFinishQuizPlayed(id) {
    return db.execute(
      `UPDATE users 
       SET finishQuizPlayed = finishQuizPlayed + 1 
       WHERE id = ?`,
      [id]
    );
  }

  static async fetchEscapeQuizPlayed(id) {
    return db.execute(
      `SELECT escapeQuizPlayed FROM users WHERE id = ?`,
      [id]
    );
  }

  static async setEscapeQuizPlayed(id) {
    return db.execute(
      `UPDATE users 
       SET escapeQuizPlayed = escapeQuizPlayed + 1 
       WHERE id = ?`,
      [id]
    );
  }
};