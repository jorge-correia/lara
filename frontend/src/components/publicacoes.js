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
        <h3 class="tipo-publicacao" data-aos="fade-up">{data.strapiPublicacoes.tipoPublicacao}</h3>
        <p class="publicacao" data-aos="fade-up">{data.strapiPublicacoes.refPublicacao}</p>
    
        </div>
    //</section>*/
  );
}

const query = graphql`
  query {
    strapiPublicacoes {
      strapiId
      refPublicacao
      tipoPublicacao
    }
  }
`;

export default Publicacoes;