import React from "react";
import Publicacoes from "../components/publicacoes";
import Footer from "../components/footer";
import NavBar from '../components/navbar'
import '../styles/estilo.css';
import '../styles/publicacoes.css';

const PublicacoesPage = () => {

  return (
    //<Layout> navBar+ rodape
      <div>
        <NavBar page="publicacoes"/>
        <section className="secao" id="section">
          <div className="container">
            <h2 className="titulo-div">Publicações</h2>
            <Publicacoes />
          </div>  
        </section>
        <Footer />
      </div>
    //</Layout>
  );
};


export default PublicacoesPage;
