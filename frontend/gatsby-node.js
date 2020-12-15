exports.sourceNodes=({ actions}) =>{
    const{ createTypes} = actions;
    const typeDefs= `
    type strapiPublicacoes implements Node{
        tipoPublicacao: String
        refPublicacao: String
    }

    type strapiExperimentos implements Node{
      linkExperimento: String
      nomeExperimento: String
      descricaoExperimento: String
    }
    
    type strapiCursos implements Node{
      nomeCurso: String
      descricaoCurso: String
      linkCurso: String
    }

    type strapiProfessores implements Node{
      nomeProfessor: String
      descricaoProfessor: String
      lattesProfessor: String
    }

    type strapiAlunos implements Node{
      nomeAluno: String
      descricaoAluno: String
      lattesAluno: String
      linkedinAluno: String
    }

    type strapiPostBlog implements Node{
      tituloPost: String
      conteudoPost: String
      
    }
    `

    createTypes(typeDefs);
}

/**  
 **falta colocar as imagnes no coisas acima tipo fotoCurso, fotoExperimento....
 * dataPublicacaoPost: Date
*/ 
 
