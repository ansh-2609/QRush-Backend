 
const express = require('express');
const appRouter = express.Router();

const appController = require('../controllers/appController');

// Today's Word
appRouter.get('/todaysword/:id', appController.getTodaysWord);

// categories
appRouter.get('/categories/planets', appController.getPlanetsPage);
appRouter.get('/categories/plants', appController.getPlantsPage);
appRouter.get('/categories/animals', appController.getAnimalsPage);
appRouter.get('/categories/technology', appController.getTechnologyPage);
appRouter.get('/categories/science', appController.getSciencePage);
appRouter.get('/categories/geography', appController.getGeographyPage);
appRouter.get('/categories/generalknowledge', appController.getGeneralKnowledgePage);
appRouter.get('/categories/travel', appController.getTravelPage);
appRouter.get('/categories/environment', appController.getEnvironmentPage);
appRouter.get('/categories/space', appController.getSpacePage);

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

// escape rooms
appRouter.get('/quiz-type/escape-rooms/temple', appController.getEscapeRoom1Page);
appRouter.get('/quiz-type/escape-rooms/island', appController.getEscapeRoom2Page);
appRouter.get('/quiz-type/escape-rooms/lab', appController.getEscapeRoom3Page);

// playcount
appRouter.get('/api/playcount/:category', appController.getPlayCounts);
appRouter.put('/api/playcount/:category', appController.incrementPlayCount);

// complete status
appRouter.get('/api/cstatus/:category/:userId', appController.getCStatus);
appRouter.put('/api/cstatus/:category/:userId', appController.updateCStatus);

// image quiz status
appRouter.get('/api/imagequizstatus/:category/:userId', appController.getImageQuizStatus);
appRouter.put('/api/imagequizstatus/:category/:userId', appController.updateImageQuizStatus);

// finish quiz status
appRouter.get('/api/finishquizstatus/:category/:userId', appController.getFinishQuizStatus);
appRouter.put('/api/finishquizstatus/:category/:userId', appController.updateFinishQuizStatus);

// escape quiz status
appRouter.get('/api/escapequizstatus/:category/:userId', appController.getEscapeQuizStatus);
appRouter.put('/api/escapequizstatus/:category/:userId', appController.updateEscapeQuizStatus);

// badges
appRouter.get('/badges', appController.getBadges);
appRouter.get('/api/userbadges/:userId', appController.getUserBadges);
appRouter.put('/api/badges/:userId/firstcategoryquiz', appController.setFirstQuizBadge);
appRouter.put('/api/badges/:userId/secondcategoryquiz', appController.setSecondCategoryQuizBadge);
appRouter.put('/api/badges/:userId/secondcategoryquizprogress', appController.updateSecondCategoryQuizBadge);
appRouter.put('/api/badges/:userId/thirdcategoryquiz', appController.setThirdCategoryQuizBadge);
appRouter.put('/api/badges/:userId/thirdcategoryquizprogress', appController.updateThirdCategoryQuizBadge);
appRouter.put('/api/badges/:userId/secondimagequiz', appController.setSecondImageQuizBadge);
appRouter.put('/api/badges/:userId/secondimagequizprogress', appController.updateSecondImageQuizBadge);
appRouter.put('/api/badges/:userId/thirdimagequiz', appController.setThirdImageQuizBadge);
appRouter.put('/api/badges/:userId/thirdimagequizprogress', appController.updateThirdImageQuizBadge);
appRouter.put('/api/badges/:userId/secondfinishquiz', appController.setSecondFinishQuizBadge);
appRouter.put('/api/badges/:userId/secondfinishquizprogress', appController.updateSecondFinishQuizBadge);
appRouter.put('/api/badges/:userId/firstescapequiz', appController.setFirstEscapeQuizBadge);
appRouter.put('/api/badges/:userId/secondescapequiz', appController.setSecondEscapeQuizBadge);
appRouter.put('/api/badges/:userId/thirdescapequiz', appController.setThirdEscapeQuizBadge);
appRouter.put('/api/badges/:userId/fourthescapequiz', appController.setFourthEscapeQuizBadge);
appRouter.put('/api/badges/:userId/fourthescapequizprogress', appController.updateFourthEscapeQuizBadge);
appRouter.put('/api/badges/:userId/:value/quizlordprogress', appController.updateQuizLordBadge);
appRouter.put('/api/badges/:userId/quizlord', appController.setQuizLordBadge);

// user quiz played count
appRouter.get('/api/quizplayed/:id', appController.getUserQuizPlayed);
appRouter.put('/api/quizplayed/:id', appController.incrementUserQuizPlayed);

// category quiz played count
appRouter.get('/api/categoryquizplayed/:userId', appController.getUserCategoryQuizPlayed);
appRouter.put('/api/categoryquizplayed/:userId', appController.updateUserCategoryQuizPlayed);

// image quiz played count
appRouter.get('/api/imagequizplayed/:userId', appController.getUserImageQuizPlayed);
appRouter.put('/api/imagequizplayed/:userId', appController.updateUserImageQuizPlayed);

// finish quiz played count 
appRouter.get('/api/finishquizplayed/:userId', appController.getUserFinishQuizPlayed);
appRouter.put('/api/finishquizplayed/:userId', appController.updateUserFinishQuizPlayed);

// escape quiz played count
appRouter.get('/api/escapequizplayed/:userId', appController.getUserEscapeQuizPlayed);
appRouter.put('/api/escapequizplayed/:userId', appController.updateUserEscapeQuizPlayed);


module.exports = appRouter;
