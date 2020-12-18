import React, { useEffect } from "react";
import { useStaticQuery, graphql, Link } from "gatsby";
import '../styles/estilo.css';
import '../styles/cursos.css';
import AOS from "aos";

const verification = (item, emAndamento) =>{
  if (item.node.EmAndamento == emAndamento){
    return (
      <div>
      <h3 className="nome-exp">{item.node.nome}</h3>
      <div className="card-body">
      <p className="card-text">{item.node.descricao}</p>
      <div className="div-btn">
      <button type="button" className="btn btn-cursos" /*formaction={ props.end } */ Ir para curso></button>
      </div>
      </div> 
      </div>
    )
  }
  return (<div></div>)
}

const Cursos = () =>{
  useEffect(() => {
    AOS.init();
    AOS.refresh();
  }, []);

  const data = useStaticQuery(query);
  return(

    <div className="card mb-3" data-aos="fade-up">
    <div>
    <section className="secao" id="section2">
    <div className="container container-exps">
    <h2 className="tipo-exp">Em andamento</h2>

    {data.allStrapiCursos.edges.map(
      (item) =>
      <div>
      {verification(item, true)}
      </div>
    )}

    </div>


    <div className="container container-exps">
    <h2 className="tipo-exp">Finalizados</h2>
    {data.allStrapiCursos.edges.map(
      (item) =>
      <div>
      {verification(item, false)}
      </div>
    )}
    </div>
    </section></div>
    </div>

  )
}

const query = graphql`
query {
  allStrapiCursos {
    edges {
      node {
        nome
        descricao
        EmAndamento
      }
    }
  }
}
`

export default Cursos;
