module.exports.adicionar_noticia = function (application, request, response) {
  // acrescentar o { validacao : {}} para enviar os erros quando da validação
  response.render("form_add_noticia", { validacao: {}, noticia: {} });
};

module.exports.noticia_salvar = function (application, request, response) {
  // recebe os dados do formulário
  var noticia = request.body;

  // visualiza as informações recebidas
  //res.send(noticia);

  // valida as informações
  request
    .assert("titulo", "O campo título é de preenchimento obrigatório")
    .notEmpty();
  request
    .assert("resumo", "O campo resumo é de preenchimento obrigatório")
    .notEmpty();
  request
    .assert("resumo", "O campo resumo deve ter entre 5 e 40 caracteres")
    .len(5, 40);
  request
    .assert("autor", "O campo autor é de preenchimento obrigatório")
    .notEmpty();
  request
    .assert("data_noticia", "O campo data é de preenchimento obrigatório")
    .notEmpty()
    .isDate({ format: "YYYY-MM-DD" });
  request
    .assert("noticia", "O campo descrição é de preenchimento obrigatório")
    .notEmpty();

  // se algum campo tiver erro
  var erros = request.validationErrors();

  console.log(erros);

  if (erros) {
    response.render("admin/form_add_noticia", {
      validacao: erros,
      noticia: noticia,
    });
  } else {
    // recupera conexão
    var connection = application.config.dbConnection();
    var noticiasModel = new application.app.models.NoticiasDAO(connection);

    // salva os dados no banco de dados
    // enviando 3 parâmetros: dados, conexão e callback
    noticiasModel.salvarNoticia(noticia, function (error, result) {
      response.redirect("/noticias");
    });
  }
};
