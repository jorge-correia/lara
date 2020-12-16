import React from "react";
import Footer from "../components/footer";
import NavBar from '../components/navbar'
import Laboratorios from "../components/laboratorios";
import '../styles/estilo.css';
import '../styles/quemsomos.css';


export default function LaboratoriosPage() {
  return (
    <div>
      <NavBar page="laboratorios"/>
      <section className="secao" id="section2">
        <div className="container container-exps">
          <h2 className="tipo-exp">Remotos</h2>
          <Laboratorios/>
        </div>

        <div className="container container-exps">
          <h2 className="tipo-exp">Virtuais</h2>
          <Laboratorios/>
        </div>
      </section>
      <Footer />
    </div>
  )
}
