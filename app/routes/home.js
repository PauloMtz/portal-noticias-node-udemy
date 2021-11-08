module.exports = function (application) {
  application.get("/", function (request, response) {
    // acessa o método index dentro de home em controllers
    // passando os parâmetros utilizados lá no método dentro de controller
    application.app.controllers.home.index(application, request, response);
  });
};
