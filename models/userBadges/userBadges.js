const db = require('../../utils/databaseUtils');
const User = require('../user/user');

module.exports = class user_badges {
    constructor(id, user_id, badge_id, unlocked, progress, date_unlocked) {
        this.id = id;
        this.user_id = user_id;
        this.badge_id = badge_id;
        this.unlocked = unlocked;
        this.progress = progress;
        this.date_unlocked = date_unlocked;
    }

    static fetchBadgesByUser(userId) {
        return db.execute('SELECT * FROM user_badges WHERE user_id = ?', [userId]);
    }

    static insert(userId) {
        return db.execute(
          `INSERT INTO user_badges (user_id, badge_id, unlocked, progress, date_unlocked)
           SELECT ?, id, 0, 0, NULL FROM badges`,
            [userId]
        );
    }

    static setFirstQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW() 
             WHERE user_id = ? AND badge_id = 1`,
             [userId]
        );
    }

    static setSecondCategoryQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW()  
             WHERE user_id = ? AND badge_id = 2`,
             [userId]
        );
    }

    static async updateSecondCategoryQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET progress = LEAST(progress + 20, 100)
             WHERE user_id = ? AND badge_id = 2`,
             [userId]
        );
    }

    static setThirdCategoryQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW()  
             WHERE user_id = ? AND badge_id = 3`,
             [userId]
        );
    }

    static async updateThirdCategoryQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET progress = LEAST(progress + 10, 100)
             WHERE user_id = ? AND badge_id = 3`,
             [userId]
        );
    }

    static setSecondImageQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW()  
             WHERE user_id = ? AND badge_id = 4`,
             [userId]
        );
    }

    static async updateSecondImageQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET progress = LEAST(progress + 20, 100)
             WHERE user_id = ? AND badge_id = 4`,
             [userId]
        );
    }

    static setThirdImageQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW()  
             WHERE user_id = ? AND badge_id = 5`,
             [userId]
        );
    }

    static async updateThirdImageQuizBadge(userId) {

        const [result] = await User.fetchImageQuizPlayed(userId);
        const completed_quizzes = result[0].imageQuizPlayed; 

        const progress = Math.floor(((completed_quizzes + 1) / 7) * 100);

        return db.execute(
            `UPDATE user_badges 
            SET progress = LEAST(?, 100)
            WHERE user_id = ? AND badge_id = 5`,
            [progress, userId]
        );
    }


    static setSecondFinishQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW()  
             WHERE user_id = ? AND badge_id = 6`,
             [userId]
        );
    }

    static async updateSecondFinishQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET progress = LEAST(progress + 20, 100)
             WHERE user_id = ? AND badge_id = 6`,
             [userId]
        );
    }

    static setFirstEscapeQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW()  
             WHERE user_id = ? AND badge_id = 7`,
             [userId]
        );
    }

    static setSecondEscapeQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW()  
             WHERE user_id = ? AND badge_id = 8`,
             [userId]
        );
    }

    static setThirdEscapeQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW()  
             WHERE user_id = ? AND badge_id = 9`,
             [userId]
        );
    }

    static setFourthEscapeQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW()  
             WHERE user_id = ? AND badge_id = 10`,
             [userId]
        );
    }

    static async updateFourthEscapeQuizBadge(userId) {

        const [result] = await User.fetchEscapeQuizPlayed(userId);
        const completed_quizzes = result[0].escapeQuizPlayed; 

        const progress = Math.floor(((completed_quizzes + 1) / 3) * 100);

        return db.execute(
            `UPDATE user_badges 
            SET progress = LEAST(?, 100)
            WHERE user_id = ? AND badge_id = 10`,
            [progress, userId]
        );
    }

    static async updateQuizLordBadge(userId, value) {
        return db.execute(
            `UPDATE user_badges 
            SET progress = LEAST(4 * ?, 100)
            WHERE user_id = ? AND badge_id = 11`,
            [value, userId]
        );
    }

    static setQuizLordBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, progress = 100, date_unlocked = NOW()  
             WHERE user_id = ? AND badge_id = 11`,
             [userId]
        );
    }
};