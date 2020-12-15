exports.sourceNodes=({ actions}) =>{
    const{ createTypes} = actions;
    const typeDefs= `
    type strapiPublicacoes implements Node{
        tipoPublicacao: String
        refPublicacao: String
    }

    type strapiExperimentos implements Node{
      //fotoExperimento: image/midia
      linkExperimento: String
      nomeExperimento: String
      descricaoExperimento: String
    }
    `

    createTypes(typeDefs);
}

/**  
 ** Olha aqui 
 * Deixei algumas coisas prontas aqui, so nao sei qual o tipo coloca para imagens 
 * 



    type strapiCursos implements Node{
      nomeCurso: String
      descricaoCurso: String
      //fotoCurso: image/midia
      linkCurso: String
    }

    type strapiProfessores implements Node{
      nomeProfessor: String
      descricaoProfessor: String
      fotoProfessor: image
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
      conteudoPost: String?
      fotoPost: image?
      dataPublicacaoPost: date
      autores: relation?
    }

*/ 
 
