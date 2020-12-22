import React, { useEffect } from "react";
import '../styles/estilo.css';
import '../styles/index.css';
import AOS from "aos";


export default function Teste1(props) {
    const comDiv = props.comDiv;
    useEffect(() => {
        AOS.init();
        AOS.refresh();
      }, []);
    if(comDiv){
        return(
                <>
                 <section className="secao" id={props.id}>
                    <h2 className="titulo2">{props.titulo}</h2>
                    <div className={props.container}>
                        <div className="row">
                        <div className="col-sm-6">
                            <p className={props.desc}>{props.conteudo}</p>
                        </div>
                        <div className="col-sm-6">
                            <img className={props.image} data-aos="fade-left" src={props.srcImage} alt=""/>
                        </div>
                        </div>
                    </div>
                    <svg className="divisoria" viewBox="0 0 1280 187.25"><defs></defs><path className="cls-1a" d="M1280,499.33c-184.35,85.22-418.76,153.33-594.33,43.34-21.25-13.31-29.24-21.47-50-35C528.53,437.82,343.26,395.39,0,509.33V626H1280Z" transform="translate(0 -438.75)"/></svg>
                 </section> 
                </> 
            );}
    else{
        return(
            <>
              <section className="secao" id={props.id}>
                <h2 className="titulo2">{props.titulo}</h2>
                <div className={props.container}>
                    <div className="row">
                    <div className="col-sm-6">
                        <p className={props.desc}>{props.conteudo}</p>
                    </div>
                    <div className="col-sm-6">
                        <img className={props.image} data-aos="fade-left" src={props.srcImage} alt=""/>
                    </div>
                    </div>
                </div>
              </section> 
            </> 
        );}
}

//<svg className="divisoria" viewBox="0 0 1280 187.25"><defs></defs><path class="cls-1" d="M1280,499.33c-184.35,85.22-418.76,153.33-594.33,43.34-21.25-13.31-29.24-21.47-50-35C528.53,437.82,343.26,395.39,0,509.33V626H1280Z" transform="translate(0 -438.75)"/></svg>