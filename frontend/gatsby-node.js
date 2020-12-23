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
        lattesProfessor: String
        descricaoProfessor: String
        strapiId: String 
    }

    type strapiCardAlunos implements Node{
        nomeAluno: String
        lattesAluno: String
        linkedinAluno: String
        descricaoAluno: String
        strapiId: String 
    }

    type strapiCursos implements Node{
        nome: String
        descricao: String
        EmAndamento: Boolean
        strapiId: String
    }
    
    type strapiExperimentos implements Node{
        nomeExperimento: String
        descricaoExperimento: String
        remoto: Boolean
        strapiId: String
        linkExperimento: String
    }

    type strapiPostsBlogs implements Node{
        conteudoPost: String
        dataPublicacaoPost: String
        tituloPost: String
    }

    `

    createTypes(typeDefs);
}
