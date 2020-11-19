import React from "react";
import { Link } from "gatsby"
import Footer from '../components/footer';
import NavBar from '../components/navbar'
import CardProfessor from '../components/card-professor/card-professor';
import '../styles/estilo.css';
import '../styles/index.css';
import foto from "../components/card-professor/foto.jpg"


export default function Home() {
  return( 
    <div>
      <div>
        <NavBar/>
        <Link to="/publicacoesPage">Hi lorena</Link>
        <Footer/>
      </div>


      <div className="container sobre-lara">
        <h2 className="titulo-lara">Laboratório Remoto em AVA</h2>
        // lara
      </div>

      
      <div className="container experimento">
        <h2 className="titulo">Experimentos</h2>
        // O TITULO N TA APARECENDO PQ A COR DA FONTE EH BRANCA 
        // exps
      </div>


      <div className="container sobre-colaboracao">
        <h2 className="titulo2">Colaboração</h2>
        // colab
      </div>


      <div className="container sobre-multilinguagem">
        <h2 className="titulo">Multilinguagem</h2>
        // O TITULO N TA APARECENDO PQ A COR DA FONTE EH BRANCA 
        // multilinguagem
      </div>


      <div className="container sobre-contato">
        <h2 className="titulo2">Entre em contato</h2>
        // contato
      </div>
    </div>
  );
  }
