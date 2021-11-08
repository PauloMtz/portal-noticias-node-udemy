var app = require("./config/server");

/* -------------------------------------------
    Inicialização do projeto
    - npm init

    Instalações
    - npm install express --save
    - npm install ejs --save
    - npm install body-parser --save
    - npm install mysql2 --save
    - npm install consign --save
    - npm install express-validator --save
--------------------------------------------- */

app.listen(3000, function () {
  console.log("Aplicação iniciada em http://localhost:3000");
});
