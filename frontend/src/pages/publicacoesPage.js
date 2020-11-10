import React from "react";
import Publicacoes from "../components/publicacoes";
import Footer from "../components/footer";
import '../styles/estilo.css';
import '../styles/publicacoes.css';

export default function PublicacoesPage() {
  return (
    //<Layout> navBar+ rodape
      <div>
      <section className="secao" id="section">
        <div className="container">
          <h2 className="titulo-div">Publicações</h2>
          <Publicacoes />
          <Publicacoes />
          <Publicacoes />
          <Publicacoes />
        </div>  
      </section>
      <Footer />
      </div>
    //</Layout>
  )
}
