var mysql = require("mysql");

var connMysql = function () {
  //console.log("Conexao estabelecida...");
  return mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "admin123",
    database: "blog",
  });
};

module.exports = function () {
  //console.log("Módulo de conexão carregado pelo autoload...");
  return connMysql;
};
