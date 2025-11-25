const db = require('../../utils/databaseUtils');
const { insert } = require('../CStatus/cStatus');

module.exports = class user_Badges {
    constructor(id, user_id, badge_id, unlocked, progress, date_unlocked) {
        this.id = id;
        this.user_id = user_id;
        this.badge_id = badge_id;
        this.unlocked = unlocked;
        this.progress = progress;
        this.date_unlocked = date_unlocked;
    }

    static fetchBadgesByUser(userId) {
        return db.execute('SELECT * FROM user_Badges WHERE user_id = ?', [userId]);
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
             SET unlocked = 1, date_unlocked = NOW(), progress = 100 
             WHERE user_id = ? AND badge_id = 1`,
             [userId]
        );
    }

    static setSecondCategoryQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET unlocked = 1, date_unlocked = NOW(), progress = 100 
             WHERE user_id = ? AND badge_id = 2`,
             [userId]
        );
    }

    static updateSecondCategoryQuizBadge(userId) {
        return db.execute(
            `UPDATE user_badges 
             SET progress = LEAST(progress + 20, 100),
                 unlocked = CASE WHEN progress + 20 >= 100 THEN 1 ELSE unlocked END,
                 date_unlocked = CASE WHEN progress + 20 >= 100 THEN NOW() ELSE date_unlocked END
             WHERE user_id = ? AND badge_id = 2`,
             [userId]
        );
    }

};