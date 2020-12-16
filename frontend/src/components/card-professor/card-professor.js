import React from "react";
import { useStaticQuery, graphql } from "gatsby";
import "./style.css";

/**
 * name: nome do professor
 * img: caminho relativo para a imagem
 * description: descricao curta do professor
 * lattes: link para o lattes do professor
 */

const CardProfessor = () =>{
  const data = useStaticQuery(query);
  return(
    <div>
      <section className="secao2"> 
           <div className="container">
           <h2 className="funcao">Professores</h2>
           	 	<div id="deck-professores" class="card-deck">

          {data. allStrapiCardProfessores.edges.map(
            (item) =>
            <div className="card--container">
              <div className="card--section-name">
                <p>{ item.node.nomeProfessor }</p>
              </div>

              <div className="card--section-photo">
                <div className="card--photo-container">
                  <img
                    src= ""  
                    alt=""
                    draggable="false"
                  />
                </div>
              </div>

              <div className="card--section-description">
                <p>{ item.node.descricaoProfessor }</p>
              </div>

              <div className="card--section-lattes">
                <a
                  href={item.node.lattesProfessor}
                  >
                  lattes
                </a>
              </div>
              </div>
                      )}
            </div>
            </div>
            </section>
            </div>
          );
}

const query = graphql`
  query {
    allStrapiCardProfessores {
      edges {
        node {
          nomeProfessor
          descricaoProfessor
          lattesProfessor
          strapiId
          fotoProfessor {
            url
          }
        }
      }
    }
  }
`;
export default CardProfessor;