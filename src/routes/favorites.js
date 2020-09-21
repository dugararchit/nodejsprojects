const express = require("express");
const router = express.Router();
const bodyParser = require("body-parser");
const tokenValidator = require("../middlewares/tokenValidator");
const favorites = require("../controllers/favorites");
router.use(bodyParser.json());

//Favourits API Routes
router.get('/getRecords', favorites.getFavorites);
router.post('/insertRecord', favorites.insertFavorites);
router.put('/updateRecord/:id', favorites.updateFavorites);
router.delete('/deleteRecord/:id', favorites.deleteFavorites);
module.exports = router;