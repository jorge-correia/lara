import React, { useEffect } from "react";
import '../styles/estilo.css';
import '../styles/index.css';
import laracolaborativo from '../../public/assets/laracolaborativo.png'; 
import AOS from "aos";


export default function DetalhesPag() {
    useEffect(() => {
        AOS.init();
        AOS.refresh();
      }, []);

  return(
    <>
    <section className="secao" id="secao1">
      <div className="container sobre-lara">
        <div className="row">
          <div className="col-sm-6">
            <h2 className="titulo-lara">Laboratório Remoto em AVA</h2>
            <p className="desc-lara">O LARA - Laboratório Remoto em Ambiente Virtual de Aprendizagem - é um ambiente colaborativo  que visa auxiliar o ensino/aprendizagem através de programação contextualizada</p>
          </div>
          <div className="col-sm-6">
            <img className="img-lara" data-aos="fade-left" src={laracolaborativo}/>
          </div>
        </div>
      </div>
      <svg className="divisoria1" viewBox="0 0 1280 187.25"><defs></defs><path className="cls-1a" d="M1280,499.33c-184.35,85.22-418.76,153.33-594.33,43.34-21.25-13.31-29.24-21.47-50-35C528.53,437.82,343.26,395.39,0,509.33V626H1280Z" transform="translate(0 -438.75)"/></svg>
    </section> 
    </>
  );
}

//<style>.cls-1 fill:#4285f4;</style>