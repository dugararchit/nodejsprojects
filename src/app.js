const express = require('express');
const cookieParser = require('cookie-parser');
const app = express();
const env = require("./config/config.json");
const port = env.port;
const path = require('path');
const indexRouter = require('./routes/index');
const favoritesRouter = require('./routes/favorites');

const swaggerUi = require('swagger-ui-express');
const swaggerDocument = require('./config/swagger.json');

app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocument));

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

//Express Methods
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//CORS
app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

//Declaring Routes
app.use('/', indexRouter);
app.use('/favorites', favoritesRouter);

//Starting the Server
try {
  app.listen(port, () => console.debug(`App started on port ${port}`)).timeout = 600000;
}
catch (error) {
  console.debug(error)
}

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  res.send('Bad Request ERROR : Invalid Url.');
});

//Default error Handler
app.use((err, req, res, next) => {
  res.status(err.status || 500);
  console.error(err.stack)
  res.render('error');
})

module.exports = app;

