import React from "react";
import { useStaticQuery, graphql, Link } from "gatsby";
import "../styles/estilo.css";
import "../styles/quemsomos.css";
import Image from "../../public/static/i_Stock_648229868_1024x909_e96a27f111.jpg";



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
           	 	<div id="deck-professores" className="card-deck">

          {data. allStrapiCardProfessores.edges.map(
            (item) => 
            
              <div className="card" data-aos="zoom-in-up" key={item.node.strapiId}>
              <div className="title text-center">
                <br/><h3 className="nome">{ item.node.nomeProfessor }</h3>
                <img src={Image} className="img-redonda" alt=""/>
              </div>
              <div className="descricao">
                <p id="ptext">{item.node.descricaoProfessor}</p>
              </div>
              <div className="div-prof-lattes"><Link className="prof-lattes" to={ item.node.lattesProfessor }>Lattes</Link></div>
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
          id
        }
      }
    }
  }
`;
export default CardProfessor;
