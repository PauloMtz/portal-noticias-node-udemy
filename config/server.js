var express = require("express");
// consign é para estruturar as rotas - autoload
var consign = require("consign");
// body-parser é para pegar os dados no formulário
var bodyParser = require("body-parser");
var expressValidator = require("express-validator");

// utiliza os middlewares
var app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(expressValidator());

// informa qual o tipo de engine
app.set("view engine", "ejs");

// informa onde buscar as views
app.set("views", "./app/views");
// informa onde estão os arquivos estáticos
app.use(express.static("./app/public"));

// o consign deve ser chamado depois do express
// ele deve ser informado onde estão as rotas
consign()
  .include("app/routes")
  .then("config/dbConnection.js")
  .then("app/models")
  .then("app/controllers")
  .into(app);

module.exports = app;
