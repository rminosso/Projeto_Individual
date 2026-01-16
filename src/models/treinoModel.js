var database = require("../database/config");

function buscarTreinos(tipo, diasSemana, nivel) {
    console.log("ACESSEI O TREINO MODEL para buscar: ", tipo, diasSemana, nivel);

    var instrucaoSql = `
        SELECT idDivisao, tipo, diasSemana, nivel, descricao, titulo 
        FROM divtreino 
        WHERE tipo = '${tipo}' 
          AND diasSemana = ${diasSemana} 
          AND nivel = '${nivel}';`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarTreinos
};