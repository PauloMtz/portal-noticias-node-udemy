module.exports = function (application) {
  application.get("/adicionar_noticia", function (req, res) {
    // acessa a rota adicionar_noticia lá no controller
    application.app.controllers.admin.adicionar_noticia(application, req, res);
  });

  application.post("/noticia/salvar", function (req, res) {
    // acessa a rota adicionar_noticia lá no controller
    application.app.controllers.admin.noticia_salvar(application, req, res);
  });
};
