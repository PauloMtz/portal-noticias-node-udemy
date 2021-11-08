module.exports.index = function (application, request, response) {
  // instancia uma conexão com o banco
  var connection = application.config.dbConnection();
  // instancia NoticiasDAO
  var noticiasModel = new application.app.models.NoticiasDAO(connection);

  // recupera as cinco últimas notícias no banco
  noticiasModel.get5UltimasNoticias(function (error, result) {
    response.render("index", { noticias: result });
  });
};
