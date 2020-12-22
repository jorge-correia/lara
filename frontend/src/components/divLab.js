import React, { useEffect } from "react";
import '../styles/estilo.css';
import '../styles/laboratorios.css'; 
import AOS from "aos";

export default function DivLab(props) {
    useEffect(() => {
        AOS.init();
        AOS.refresh();
      }, []);

  return(
    <div className="secao" id="secao1Lab">
      <div className="container sobre-lab">
        <div className="row">
          <div className="col-sm-6">
            <h2 className="titulo-lab">Laboratórios</h2>
            <p className="desc-lab">O LARA conta com diversos experimentos de robótica, tanto remotos quanto virtuais para melhor satisfazer as necessidades dos alunos e professores</p>
          </div>
          <div className="col-sm-6">
            <img className="img-lab" data-aos="fade-left" src={props.imagem} alt=""/>
          </div>
        </div>
      </div>
      <svg id="divisoriaLab" viewBox="0 0 1280 187.25"><defs></defs><path className="cls-1" d="M1280,499.33c-184.35,85.22-418.76,153.33-594.33,43.34-21.25-13.31-29.24-21.47-50-35C528.53,437.82,343.26,395.39,0,509.33V626H1280Z" transform="translate(0 -438.75)"/></svg>
    </div> 
  );
}


