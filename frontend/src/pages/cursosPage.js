import React from "react";
import { Link } from "gatsby"
import Cursos from "../components/cursos";
import Footer from "../components/footer";
import NavBar from '../components/navbar'
import '../styles/estilo.css';
import '../styles/cursos.css';

export default function cursosPage() {
  return (
    <div>
      <NavBar page="cursos"/>
      <section className="secao" id="section2">
        <div className="container container-exps">
          <h2 className="tipo-exp">Em andamento</h2>
          //card curso
          //<Cursos />
        </div>

        <div className="container container-exps">
          <h2 className="tipo-exp">Finalizados</h2>
          //card curso
          //<Cursos />
        </div>
      </section>

    </div>
  )
}
