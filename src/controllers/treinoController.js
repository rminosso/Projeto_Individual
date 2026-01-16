var treinoModel = require("../models/treinoModel");

function buscarTreinos(req, res){
    var tipo = req.query.tipo;
    var diasSemana = req.query.diasSemana;
    var nivel = req.query.nivel;

    if (tipo == undefined) {
        res.status(400).send("O tipo está undefined!");
    } else if (diasSemana == undefined) {
        res.status(400).send("Os dias da semana estão undefined!");
    } else if (nivel == undefined) {
        res.status(400).send("O nível está undefined!");
    }else {
        treinoModel.buscarTreinos(tipo, diasSemana, nivel)
        .then(function(resultado){
            if (resultado.length > 0){
                res.status(200).json(resultado)
            }else{
                res.status(204).send(`Nenhum resultado encontrado`)
            }
        }) .catch(function(erro){
            console.log(erro);
            res.status(500).json(erro.sqlMessage)
        });
    }
}   

module.exports = {
    buscarTreinos
};