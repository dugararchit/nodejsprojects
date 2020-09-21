const express = require("express");
const router = express.Router();
const bodyParser = require("body-parser");
const tokenValidator = require("../middlewares/tokenValidator");
const favorites = require("../controllers/favorites");
router.use(bodyParser.json());

//Favourits API Routes
router.get('/getRecords', favorites.getFavorites);
router.post('/insertRecord', favorites.insertFavorites);
// router.post('/updateRecords', favorites.updateFavorites);
// router.delete('/deleteRecords', favorites.deleteFavorites);
module.exports = router;