import React from "react";
import NavBar from '../components/navbar'
import Cursos from "../components/cursos";
import Footer from "../components/footer";
import DivCurso from "../components/divCursos";
import IMGCursos from "../../public/assets/cursos.png";

const CursosPage = () =>{
  return (
    <div>
      <NavBar page="cursos"/>
      <DivCurso imagem={IMGCursos}/>
      <Cursos/>
      <Footer />
    </div>
  )
}

export default CursosPage;
