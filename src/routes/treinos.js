var express = require("express");
var router = express.Router();

var treinoController = require("../controllers/treinoController");
const { route } = require("./usuarios");

router.get("/buscar", function (req, res){
    treinoController.buscarTreinos(req, res);
});

module.exports = router;