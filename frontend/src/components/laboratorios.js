import React, { useEffect } from "react";
import '../styles/estilo.css';
import '../styles/laboratorios.css';
import AOS from "aos";

/**
 * name: Nome do experimento 
 * img: caminho da imagem
 * description: descricao do experimento 
 * end: link para o experimento ou para o ava
 */

export default function Experimentos(props) {
  useEffect(() => {
    AOS.init();
    AOS.refresh();
  }, []);

  return(
    <div className="card mb-3" data-aos="fade-up">
      <h3 className="nome-exp">{ props.name }</h3>
      <img src={ props.img } className="card-img-top img-experimento" alt="" draggable="false"/>
      <div className="card-body">
        <p className="card-text">{ props.description }</p>
        <div className="div-btn">
          <button type="button" className="btn btn-laboratorio" formaction={ props.end } Ir para curso></button>
        </div>
      </div> 
    </div>
  )
}
