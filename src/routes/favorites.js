const express = require("express");
const router = express.Router();
const bodyParser = require("body-parser");
const tokenValidator = require("../middlewares/tokenValidator");
const favorites = require("../controllers/favorites");
router.use(bodyParser.json());

//Routes
router.get('/intro',favorites);

module.exports = router;