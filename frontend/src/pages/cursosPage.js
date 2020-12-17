import React from "react";
import Cursos from "../components/cursos";
import Footer from "../components/footer";
import NavBar from '../components/navbar'
import '../styles/estilo.css';
import '../styles/cursos.css';

const CursosPage = () =>{
  return (
    <div>
      <NavBar page="cursos"/>
          <Cursos/>
      <Footer />
    </div>
  )
}

export default CursosPage;
