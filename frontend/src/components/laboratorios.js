import React, { useEffect } from "react";
import { useStaticQuery, graphql } from "gatsby";
import '../styles/estilo.css';
import '../styles/laboratorios.css';
import AOS from "aos";

export default function Experimentos() {
  const data = useStaticQuery(query);
  useEffect(() => {
    AOS.init();
    AOS.refresh();
  }, []);

  return(
    <div>
      {data. allStrapiExperimentos.edges.map(
        (item) =>

        <div className="card mb-3" data-aos="fade-up">
          <h3 className="nome-exp">{ item.node.nomeExperimento }</h3>
          /*<img src={ item.node.fotoExperimento } className="card-img-top img-experimento" alt="" draggable="false"/>*/
          <div className="card-body">
            <p className="card-text">{ item.node.descricaoExperimento }</p>
            <div className="div-btn">
              <button type="button" className="btn btn-laboratorio" formaction={ item.node.linkExperimento } Ir para curso></button>
            </div>
          </div> 
        </div>
       )}
    </div>
  )
}

const query = graphql`
query {
  allStrapiExperimentos{
    edges {
      node {
        nomeExperimento
        linkExperimento
        descricaoExperimento
      }
    }
  }
}
`;

/* fotoExperimento */
