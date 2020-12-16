import React, { useEffect } from "react";
import '../styles/estilo.css';
import '../styles/index.css';
import AOS from "aos";


export default function Teste2(props) {
    useEffect(() => {
        AOS.init();
        AOS.refresh();
      }, []);
     

  return(
     <div>
        <section className="secao" id={props.id}>
            <h2 className="titulo">{props.titulo}</h2>
            <div className={props.container}>
                <div className="row">
                <div className="col-sm-6">
                    <img className={props.image} data-aos="fade-right" src={props.srcImage} alt=""/>
                </div>
                <div className="col-sm-6">
                    <p className="desc-multilinguagem">{props.conteudo}</p>
                </div>
                </div>
            </div>

            <svg className="divisoria1" viewBox="0 0 1280 187.25"><defs></defs><path className="cls-2" d="M1280,499.33c-184.35,85.22-418.76,153.33-594.33,43.34-21.25-13.31-29.24-21.47-50-35C528.53,437.82,343.26,395.39,0,509.33V626H1280Z" transform="translate(0 -438.75)"/></svg>
            </section> 
    </div> 
  );
}

//<svg classNameName="divisoria" viewBox="0 0 1280 187.25"><defs></defs><path className="cls-1" d="M1280,499.33c-184.35,85.22-418.76,153.33-594.33,43.34-21.25-13.31-29.24-21.47-50-35C528.53,437.82,343.26,395.39,0,509.33V626H1280Z" transform="translate(0 -438.75)"/></svg>