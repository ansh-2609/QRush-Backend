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
const User = require("../models/user/user");
const CStatus = require("../models/CStatus/cStatus");
const Badges = require("../models/badges/badges");
const user_badges = require("../models/userBadges/userBadges");
const words = require("../models/words/words");
const Environment = require("../models/category/environment");
const Space = require("../models/category/space");
const ImageQuizStatus = require("../models/imageQuizStatus/imageQuizStatus");
const FinishQuizStatus = require("../models/finishQuizStatus/finishQuizStatus");
const TempleRoom = require("../models/escapeRoom/templeRoom");
const IslandRoom = require("../models/escapeRoom/islandRoom");
const LabRoom = require("../models/escapeRoom/labRoom");
const EscapeQuizStatus = require("../models/escapeQuizStatus/escapeQuizStatus");

exports.getTodaysWord = (req, res) => {
  const { id } = req.params;
  words.fetchAWord(id)
    .then(([rows, fieldData]) => {
      res.json(rows[0]);
    })
    .catch((err) => console.log(err));
};

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

exports.getEnvironmentPage = (req, res) => {
  Environment.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.getSpacePage = (req, res) => {
  Space.fetchAll()
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

exports.getEscapeRoom1Page = async (req, res) => {
  TempleRoom.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
}

exports.getEscapeRoom2Page = async (req, res) => {
  IslandRoom.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
}

exports.getEscapeRoom3Page = async (req, res) => {
  LabRoom.fetchAll()
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
}

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

exports.getCStatus = async (req, res) => {
  const { category, userId } = req.params;
  await CStatus.fetchByCategoryAndUser(category, userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
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

exports.getImageQuizStatus = async (req, res) => {
  const { category, userId } = req.params;
  await ImageQuizStatus.fetchByCategoryAndUser(category, userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.updateImageQuizStatus = async (req, res) => {
  try {
    const { category, userId } = req.params;
    await ImageQuizStatus.updateByCategoryAndUser(category, userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update image quiz status" });
  }
};

exports.getFinishQuizStatus = async (req, res) => {
  const { category, userId } = req.params;
  await FinishQuizStatus.fetchByCategoryAndUser(category, userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.updateFinishQuizStatus = async (req, res) => {
  try {
    const { category, userId } = req.params;
    await FinishQuizStatus.updateByCategoryAndUser(category, userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update finish quiz status" });
  }
};

exports.getEscapeQuizStatus = async (req, res) => {
  const { category, userId } = req.params;
  console.log("Fetching escape quiz status for category:", category, "and userId:", userId);
  await EscapeQuizStatus.fetchByCategoryAndUser(category, userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.updateEscapeQuizStatus = async (req, res) => {
  try {
    const { category, userId } = req.params;
    await EscapeQuizStatus.updateByCategoryAndUser(category, userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update escape quiz status" });
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
  const { id } = req.params;
  await User.fetchQuizPlayed(id)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.incrementUserQuizPlayed = async (req, res) => {
  try {
    const { id } = req.params;
    await User.updateQuizPlayed(id);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to increment user quiz played count" });
  }
};

exports.getUserBadges = async (req, res) => {
  const { userId } = req.params;
  await user_badges.fetchBadgesByUser(userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.setFirstQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setFirstQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) { 
    console.error(error);
    res.status(500).json({ message: "Failed to set first quiz badge" });
  }
};

exports.setSecondCategoryQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setSecondCategoryQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set second category quiz badge" });
  }
};

exports.updateSecondCategoryQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.updateSecondCategoryQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update second category quiz badge progress" });
  }
};

exports.setThirdCategoryQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setThirdCategoryQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set third category quiz badge" });
  }
};

exports.updateThirdCategoryQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.updateThirdCategoryQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update third category quiz badge progress" });
  }
};

exports.getUserCategoryQuizPlayed = async (req, res) => {
  const { userId } = req.params;
  await User.fetchCategoryQuizPlayed(userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.updateUserCategoryQuizPlayed = async (req, res) => {
  try {
    const { userId } = req.params;
    await User.setCategoryQuizPlayed(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to increment user category quiz played count" });
  }
};

exports.getUserImageQuizPlayed = async (req, res) => {
  const { userId } = req.params;
  await User.fetchImageQuizPlayed(userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.updateUserImageQuizPlayed = async (req, res) => {
  try {
    const { userId } = req.params; 
    console.log("Updating image quiz played for userId:", userId);
    await User.setImageQuizPlayed(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to increment user image quiz played status" });
  }
};

exports.getUserFinishQuizPlayed = async (req, res) => {
  const { userId } = req.params;
  await User.fetchFinishQuizPlayed(userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.updateUserFinishQuizPlayed = async (req, res) => {
  try {
    const { userId } = req.params; 
    console.log("Updating finish quiz played for userId:", userId);
    await User.setFinishQuizPlayed(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to increment user finish quiz played status" });
  }
};


exports.getUserEscapeQuizPlayed = async (req, res) => {
  const { userId } = req.params;
  await User.fetchEscapeQuizPlayed(userId)
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch((err) => console.log(err));
};

exports.updateUserEscapeQuizPlayed = async (req, res) => {
  try {
    const { userId } = req.params; 
    console.log("Updating escape quiz played for userId:", userId);
    await User.setEscapeQuizPlayed(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to increment user escape quiz played status" });
  }
};


exports.setSecondImageQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setSecondImageQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set second image quiz badge" });
  }
};

exports.updateSecondImageQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.updateSecondImageQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update second image quiz badge progress" });
  }
};

exports.setThirdImageQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setThirdImageQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set third image quiz badge" });
  }
};

exports.updateThirdImageQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.updateThirdImageQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update third image quiz badge progress" });
  }
};

exports.setSecondFinishQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setSecondFinishQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set second finish quiz badge" });
  }
}; 

exports.updateSecondFinishQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.updateSecondFinishQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update second image quiz badge progress" });
  }
};

exports.setFirstEscapeQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setFirstEscapeQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set first escape quiz badge" });
  }
}; 

exports.setSecondEscapeQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setSecondEscapeQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set second escape quiz badge" });
  }
}; 

exports.setThirdEscapeQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setThirdEscapeQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set third escape quiz badge" });
  }
}; 


exports.setFourthEscapeQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setFourthEscapeQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set fourth escape quiz badge" });
  }
}; 

exports.updateFourthEscapeQuizBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.updateFourthEscapeQuizBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update fourth escape quiz badge progress" });
  }
};

exports.updateQuizLordBadge = async (req, res) => {
  try {
    const { userId, value } = req.params;
    await user_badges.updateQuizLordBadge(userId, value);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to update quiz lord badge progress" });
  } 
};

exports.setQuizLordBadge = async (req, res) => {
  try {
    const { userId } = req.params;
    await user_badges.setQuizLordBadge(userId);
    res.sendStatus(204); 
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Failed to set quiz lord badge" });
  }
}; 