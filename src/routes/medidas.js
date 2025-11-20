var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/evolucao/:idUsuario", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.post("/cadastrar", function (req, res) {
    medidaController.cadastrarMedida(req, res);
});

module.exports = router;