import React, { useEffect } from "react";
import { StaticQuery, graphql } from "gatsby";

import '../styles/estilo.css';
import '../styles/publicacoes.css';
import AOS from "aos";


export default function Publicacoes() {
  useEffect(() => {
    AOS.init();
    AOS.refresh();
  }, []);

  
  return(
    /*<section className="secao" id="section">
        <div className="container">*/
        //aqui vai entrar os dados dinâmicos
        <div>
        <h3 class="tipo-publicacao" data-aos="fade-up">Articles in Conference Proceedings</h3>
        <p class="publicacao" data-aos="fade-up">LOPES, Maísa Soares dos Santos. Ambiente colaborativo para ensino aprendizagem de programação integrando laboratório remoto de robótica. 2017.</p>
        <p class="publicacao" data-aos="fade-up">DOS SANTOS LOPES, Maísa Soares et al. Laboratório remoto de robótica para o ensino de programação com suporte à análise, codificação e teste. In: Anais do XXVI Workshop sobre Educação em Computação. SBC, 2018.</p>
        </div>
    //</section>*/
  );
}


