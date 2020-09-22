const express = require("express");
const router = express.Router();
const bodyParser = require("body-parser");
const tokenValidator = require("../middlewares/tokenValidator");
const favorites = require("../controllers/favorites");
router.use(bodyParser.json());

//Favourits API Routes
router.get('/getRecords', tokenValidator, favorites.getFavorites);
router.post('/insertRecord', tokenValidator,  favorites.insertFavorites);
router.put('/updateRecord/:id',tokenValidator, favorites.updateFavorites);
router.delete('/deleteRecord/:id',tokenValidator, favorites.deleteFavorites);
module.exports = router;