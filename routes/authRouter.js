const express = require('express');
const authRouter = express.Router();

const authController = require('../controllers/authController');

authRouter.post('/login-submit', authController.postLogin);
authRouter.post('/logout-submit', authController.postLogout);
authRouter.get('/check-auth', authController.checkAuth);
authRouter.post('/signup-submit', authController.postSignup);


module.exports = authRouter;
