module.exports.noticias = function (application, request, response) {
  var connection = application.config.dbConnection();
  var noticiasModel = new application.app.models.NoticiasDAO(connection);

  noticiasModel.getNoticias(function (error, result) {
    response.render("noticias", { noticias: result });
  });
};

module.exports.noticia = function (application, request, response) {
  var connection = application.config.dbConnection();
  var noticiasModel = new application.app.models.NoticiasDAO(connection);

  //console.log(request.query);
  var id_noticia = request.query;

  noticiasModel.getNoticia(id_noticia, function (error, result) {
    response.render("noticia", { noticia: result });
  });
};
