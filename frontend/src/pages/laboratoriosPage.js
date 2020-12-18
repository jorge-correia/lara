import React from "react";
import NavBar from '../components/navbar'
import Laboratorios from "../components/laboratorios";
import Footer from "../components/footer";
import DivLab from "../components/divLab";
import IMGLaboratorio from "../../public/assets/laboratorio.png";

const LaboratoriosPage= () =>{
  return (
    <div>
      <NavBar page="laboratorios"/>
      <DivLab imagem={IMGLaboratorio}/>
      <Laboratorios/>
      <Footer />
    </div>
  )
}

export default LaboratoriosPage;
