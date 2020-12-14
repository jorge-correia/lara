import React, { useEffect } from "react";
import { useStaticQuery, graphql } from "gatsby";

import '../styles/estilo.css';
import '../styles/publicacoes.css';
import AOS from "aos";



const Publicacoes = () =>{
  const data = useStaticQuery(query);
  useEffect(() => {
    AOS.init();
    AOS.refresh();
  }, []);
  

  
  return(
    /*<section className="secao" id="section">
        <div className="container">*/
        //aqui vai entrar os dados dinâmicos
        <div>
          {data. allStrapiPublicacoes.edges.map(
                (item) =>
                <div> 
                  <h3 class="tipo-publicacao" data-aos="fade-up">{item.node.tipoPublicacao}</h3>
                  <p class="publicacao" data-aos="fade-up">{item.node.refPublicacao}</p>
                </div>
              )}
        
    
        </div>
    //</section>*/
  );
}

const query = graphql`
  query {
    allStrapiPublicacoes(filter: {strapiId: {gt: 0}}) {
      edges {
        node {
          id
          strapiId
          refPublicacao
          tipoPublicacao
        }
      }
    }
  }
`;
export default Publicacoes;