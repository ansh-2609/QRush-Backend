const Animal = require("../models/category/animals");
const Planet = require("../models/category/planets");
const Plant = require("../models/category/plants");
const Technology = require("../models/category/technology");
const Science = require("../models/category/science");
const Geography = require("../models/category/geography");
const GeneralKnowledge = require("../models/category/generalknowledge");
const Landmark = require("../models/finishTheQuiz/landmark");
const Brandname = require("../models/finishTheQuiz/brandname");
const CapitalCity = require("../models/finishTheQuiz/capitalcity");
const Fact = require("../models/finishTheQuiz/fact");
const Inventor = require("../models/finishTheQuiz/inventor");
const PlayCount = require("../models/playcounts/playcount");
const IdentifyLandmark =  require("../models/identify/landmarks");
const IdentifyPlant = require("../models/identify/plants");
const IdentifyCar = require("../models/identify/cars");
const IdentifyFlag = require("../models/identify/flags");
const IdentifyAnimal = require("../models/identify/animals");
const IdentifySport = require("../models/identify/sports");
const IdentifyInstrument = require("../models/identify/instruments");
const Travel = require("../models/category/travel");
const Complete_Status = require("../models/completeStatus/completeStatus");
const User = require("../models/user/user");
const CStatus = require("../models/CStatus/cStatus");
const user_Badges = require("../models/userBadges/userBadges");
const Badges = require("../models/badges/badges");

exports.getPlanetsPage = (req, res) => {
  Planet.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getPlantsPage = (req, res) => {
  Plant.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getAnimalsPage = (req, res) => {
  Animal.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getTechnologyPage = (req, res) => {
  Technology.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getSciencePage = (req, res) => {
  Science.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getGeographyPage = (req, res) => {
  Geography.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getGeneralKnowledgePage = (req, res) => {
  GeneralKnowledge.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getTravelPage = (req, res) => {
  Travel.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getLandMarkPage = (req, res) => {
  Landmark.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getBrandNamePage = (req, res) => {
  Brandname.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getCapitalCityPage = (req, res) => {
  CapitalCity.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getFactPage = (req, res) => {
  Fact.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getInventorPage = (req, res) => {
  Inventor.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getIdentifyLandMarkPage = (req, res) => {
  IdentifyLandmark.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getIdentifyPlantPage = (req, res) => {
  IdentifyPlant.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getIdentifyCarPage = (req, res) => {
  IdentifyCar.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getIdentifyFlagPage = (req, res) => {
  IdentifyFlag.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getIdentifyAnimalPage = (req, res) => {
  IdentifyAnimal.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getIdentifyInstrumentPage = (req, res) => {
  IdentifyInstrument.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getIdentifySportPage = (req, res) => {
  IdentifySport.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getPlayCounts = async (req, res) => {
  const { category } = req.params;
  await PlayCount.fetchByCategory(category)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.incrementPlayCount = async (req, res) => {
  try {
    const { category } = req.params;
    await PlayCount.increment(category);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to increment play count" });
  }
};

exports.getCompleteStatus = async (req, res) => {
  const { category } = req.params;
  await Complete_Status.fetchByCategory(category)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getCStatus = async (req, res) => {
  const { category, userId } = req.params;
  await CStatus.fetchByCategoryAndUser(category, userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.updateCompleteStatus = async (req, res) => {
  try {
    const { category } = req.params;
    await Complete_Status.update(category);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to increment play count" });
  }
};

exports.updateCStatus = async (req, res) => {
  try {
    const { category, userId } = req.params;
    await CStatus.updateByCategoryAndUser(category, userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to increment play count" });
  }
};

exports.getBadges = (req, res) => {
  Badges.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getUserQuizPlayed = async (req, res) => {
  const { userid } = req.params;
  await User.fetchQuizPlayed(userid)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.incrementUserQuizPlayed = async (req, res) => {
  try {
    const { userid } = req.params;
    await User.updateQuizPlayed(userid);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to increment user quiz played count" });
  }
};

exports.getUserBadges = async (req, res) => {
  const { userId } = req.params;
  await user_Badges.fetchBadgesByUser(userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.setFirstQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_Badges.setFirstQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set first quiz badge" });
  }
};

exports.setSecondCategoryQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_Badges.setSecondCategoryQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set second category quiz badge" });
  }
};

exports.updateSecondCategoryQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_Badges.updateSecondCategoryQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update second category quiz badge progress" });
  }
};

exports.getUserCategoryQuizPlayed = async (req, res) => {
  const { userid } = req.params;
  await User.fetchCategoryQuizPlayed(userid)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.updateUserCategoryQuizPlayed = async (req, res) => {
  try {
    const { userid } = req.params;
    await User.setCategoryQuizPlayed(userid);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to increment user category quiz played count" });
  }
};