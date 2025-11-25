 
const express = require('express');
const appRouter = express.Router();

const appController = require('../controllers/appController');

// categories
appRouter.get('/categories/planets', appController.getPlanetsPage);
appRouter.get('/categories/plants', appController.getPlantsPage);
appRouter.get('/categories/animals', appController.getAnimalsPage);
appRouter.get('/categories/technology', appController.getTechnologyPage);
appRouter.get('/categories/science', appController.getSciencePage);
appRouter.get('/categories/geography', appController.getGeographyPage);
appRouter.get('/categories/generalknowledge', appController.getGeneralKnowledgePage);
appRouter.get('/categories/travel', appController.getTravelPage);

// Quiz-type (Finish the Quiz)
appRouter.get('/quiz-type/finish/landmark', appController.getLandMarkPage);
appRouter.get('/quiz-type/finish/brandname', appController.getBrandNamePage);
appRouter.get('/quiz-type/finish/capitalcity', appController.getCapitalCityPage);
appRouter.get('/quiz-type/finish/fact', appController.getFactPage);
appRouter.get('/quiz-type/finish/inventor', appController.getInventorPage);


// Quiz-type (Identify the Quiz)
appRouter.get('/quiz-type/identify/landmarks', appController.getIdentifyLandMarkPage);
appRouter.get('/quiz-type/identify/plants', appController.getIdentifyPlantPage);
appRouter.get('/quiz-type/identify/cars', appController.getIdentifyCarPage);
appRouter.get('/quiz-type/identify/flags', appController.getIdentifyFlagPage);
appRouter.get('/quiz-type/identify/animals', appController.getIdentifyAnimalPage);
appRouter.get('/quiz-type/identify/sports', appController.getIdentifySportPage);
appRouter.get('/quiz-type/identify/instruments', appController.getIdentifyInstrumentPage);

// playcount
appRouter.get('/api/playcount/:category', appController.getPlayCounts);
appRouter.put('/api/playcount/:category', appController.incrementPlayCount);

// complete status
appRouter.get('/api/completestatus/:category', appController.getCompleteStatus);
appRouter.put('/api/completestatus/:category', appController.updateCompleteStatus);
appRouter.get('/api/cstatus/:category/:userId', appController.getCStatus);
appRouter.put('/api/cstatus/:category/:userId', appController.updateCStatus);

// badges
appRouter.get('/badges', appController.getBadges);
appRouter.get('/api/userbadges/:userId', appController.getUserBadges);
appRouter.put('/api/badges/:userId/firstcategoryquiz', appController.setFirstQuizBadge);
appRouter.put('/api/badges/:userId/secondcategoryquiz', appController.setSecondCategoryQuizBadge);
appRouter.put('/api/badges/:userId/secondcategoryquizprogress', appController.updateSecondCategoryQuizBadge);


// user quiz played count
appRouter.get('/api/quizplayed/:userid', appController.getUserQuizPlayed);
appRouter.put('/api/quizplayed/:userid', appController.incrementUserQuizPlayed);

// category quiz played count
appRouter.get('/api/categoryquizplayed/:userid', appController.getUserCategoryQuizPlayed);
appRouter.put('/api/categoryquizplayed/:userid', appController.updateUserCategoryQuizPlayed);


module.exports = appRouter;
