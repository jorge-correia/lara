import React, { useEffect } from "react";
import '../styles/estilo.css';
import '../styles/index.css';
import L1r2 from '../../public/assets/l1r2.jpg'; 
import Imagem from '../../public/assets/imagem.png'; 
import AOS from "aos";


export default function ExperimentosIndex() {
    useEffect(() => {
        AOS.init();
        AOS.refresh();
      }, []);
    const estilo= {
      margin: "0",
       width: "100%",
       height: "100%",};

  return(
     <>
      <section className="secao" id="secao2">
        <div className="container container-desktop">
          <h2 className="titulo">Experimentos</h2>

          <div className="row experimento">
            <div className="col-12 col-sm-6 col-md-5">
              <h3 className="titulo-exp">Remotos</h3>
              <p className="desc-exp">Laboratórios remotos permitem que alunos que acessem experimentos e ferramentas reais existente em laboratório físico real de qualquer lugar do mundo através da internet.</p>
              <div className="div-btn"><button type="button" className="btn btn-saiba-mais">Saiba mais</button></div>
            </div> 
            <div className="col-12 col-sm-6 col-md-7">
              <img className="img-exp img-exp-remoto" data-aos="fade-left" src={L1r2} alt=""/>
            </div> 
          </div> 

          <div className="row experimento">
            <div className="col-12 col-sm-6 col-md-7">
              <img className="img-exp img-exp-virtual" data-aos="fade-right" src={Imagem} alt=""/>
            </div> 
            <div className="col-12 col-sm-6 col-md-5 exp-virtual">
              <h3 className="titulo-exp">Virtuais</h3>
              <p className="desc-exp">Laboratórios Virtuais são aqueles que simulam experimentos reais, ou seja, não existe nenhuma estrutura física em sua constituição. Uma das vantagens deste tipo de laboratório é permitir que diversos alunos possam acessar um mesmo experimento ao mesmo tempo.</p>
              <div className="div-btn"><button type="button" className="btn btn-saiba-mais">Saiba mais</button></div>
            </div> 
          </div> 

        </div> 
          
        <div className="container-fluid container-mobile">
          <h2 className="titulo">Experimentos</h2>
          <div className="card-deck">

            <div className="card card-exp" data-aos="zoom-in-up">
              <img className="img-exp" src={Imagem} alt=""/>
              <div className="card-body">
                <h5 className="titulo-exp">Remotos</h5>
                <p className="desc-exp">Laboratórios remotos permitem que alunos que acessem experimentos e ferramentas reais de qualquer lugar do mudo através da internet.</p>
                <div className="div-btn"><button type="button" className="btn btn-saiba-mais">Saiba mais</button></div>
              </div> 
            </div> 

            <div className="card card-exp" data-aos="zoom-in-up">
              <img className="img-exp" src={Imagem} alt=""/>
              <div className="card-body">
                <h5 className="titulo-exp">Virtuais</h5>
                <p className="desc-exp">Laboratórios Virtuais são aqueles que simulam experimentos reais, ou seja, não existe nenhuma estrutura física em sua constituição. Uma das vantagens deste tipo de laboratório é permitir que diversos alunos possam acessar um mesmo experimento ao mesmo tempo.</p>
                <div className="div-btn"><button type="button" className="btn btn-saiba-mais">Saiba mais</button></div>
              </div>
            </div> 
            
          </div> 
        </div> 

        <svg className="divisoria1" viewBox="0 0 1280 187.25"><defs><style></style></defs><path className="cls-2" d="M1280,499.33c-184.35,85.22-418.76,153.33-594.33,43.34-21.25-13.31-29.24-21.47-50-35C528.53,437.82,343.26,395.39,0,509.33V626H1280Z" transform="translate(0 -438.75)"/></svg>
      </section> 
    </>
  );
}

//<style>.cls-1 fill:#4285f4;</style>