/**
 * Implement Gatsby's Node APIs in this file.
 *
 * See: https://www.gatsbyjs.org/docs/node-apis/
 */

// You can delete this file if you're not using it

/**
 * Implement Gatsby's Node APIs in this file.
 *
 * See: https://www.gatsbyjs.org/docs/node-apis/
 */

// You can delete this file if you're not using it

exports.sourceNodes=({ actions}) =>{
    const{ createTypes} = actions;
    const typeDefs= `
    type strapiPublicacoes implements Node{
        tipoPublicacao: String
        refPublicacao: String
    }
    type strapiCardProfessores implements Node{
        nomeProfessor: String
        descricaoProfessor: String
        lattesProfessor: String
        fotoProfessor: File @fileByRelativePath
    }
    
    `

    createTypes(typeDefs);
}