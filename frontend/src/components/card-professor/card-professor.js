import React from "react";
import "./style.css";
/**
 * name: nome do professor
 * img: caminho relativo para a imagem
 * description: descricao curta do professor
 * lattes: link para o lattes do professor
 */

export default function CardProfessor(props) {
  return(
    <div className="card--container">
      <div className="card--section-name">
        <p>{ props.name }</p>
      </div>

      <div className="card--section-photo">
        <div className="card--photo-container">
          <img
            src={ props.img }
            alt=""
            draggable="false"
          />
        </div>
      </div>

      <div className="card--section-description">
        <p>{ props.description }</p>
      </div>

      <div className="card--section-lattes">
        <a
          href={props.lattes}
          >
          lattes
        </a>
      </div>
    </div>
  );
}
