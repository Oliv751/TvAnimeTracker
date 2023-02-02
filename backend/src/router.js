const express = require("express");

const router = express.Router();

// const itemControllers = require("./controllers/itemControllers");
const userControllers = require("./controllers/userControllers");
const serieControllers = require("./controllers/serieControllers");
const episodeControllers = require("./controllers/episodeControllers");
const episodeUserControllers = require("./controllers/episodeUserControllers");

// router.get("/items", itemControllers.browse);
// router.get("/items/:id", itemControllers.read);
// router.put("/items/:id", itemControllers.edit);
// router.post("/items", itemControllers.add);
// router.delete("/items/:id", itemControllers.destroy);

router.get("/users", userControllers.browse);
router.get("/users/:id", userControllers.read);
router.put("/users/:id", userControllers.edit);
router.post("/users", userControllers.add);
router.delete("/users/:id", userControllers.destroy);

router.get("/series", serieControllers.browse);
router.get("/series/:id", serieControllers.read);
router.put("/series/:id", serieControllers.edit);
router.post("/series", serieControllers.add);
router.delete("/series/:id", serieControllers.destroy);

router.get("/episodes", episodeControllers.browse);
router.get("/episodes/:id", episodeControllers.read);
router.put("/episodes/:id", episodeControllers.edit);
router.post("/episodes", episodeControllers.add);
router.delete("/episodes/:id", episodeControllers.destroy);

router.get("/episode_users", episodeUserControllers.browse);
router.get("/episode_users/:id", episodeUserControllers.read);

module.exports = router;
