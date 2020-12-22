import React, { useEffect } from "react";
import { useStaticQuery, graphql } from "gatsby";
import '../styles/estilo.css';
import '../styles/laboratorios.css';
import AOS from "aos";

const verification = (item, remoto ) =>{
  if (item.node.remoto === remoto){
    return (
      <div>
        <h3 className="nome-exp">{item.node.nomeExperimento}</h3>
        <div className="card-body">
          <p className="card-text">{item.node.descricaoExperimento}</p>
          <div className="div-btn">
            <button className="btn-laboratorio" href="../inDevelopment">
              Ir para Laboratório 
            </button>
          </div>
        </div> 
      </div>
    )
  }
  return (<div></div>)
}

const Experimentos = () => {
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
            <h2 className="tipo-exp">Remoto</h2>

              {data.allStrapiExperimentos.edges.map(
                (item) =>
                <div>
                  {verification(item, true)}
                </div>
              )}
          </div>
          <div className="container container-exps">
            <h2 className="tipo-exp">Virtual</h2>

            {data.allStrapiExperimentos.edges.map(
              (item) =>
              <div>
                {verification(item, false)}
              </div>
            )}
          </div>
        </section>
      </div>
    </div>
  )
}

const query = graphql`
query {
  allStrapiExperimentos {
    edges {
      node {
        nomeExperimento
        descricaoExperimento
        remoto 
      }
    }
  }
}
`

export default Experimentos;
