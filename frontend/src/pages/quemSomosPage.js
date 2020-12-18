import React from "react";
import NavBar from '../components/navbar';
import DivPag from "../components/divPag";
import Footer from "../components/footer";
import IMGEquipe from "../../public/assets/equipe.png";
import CardProfessor from "../components/card-professor/card-professor";
import CardAluno from "../components/card-aluno";

const QuemSomosPage = () => {

  return( 
    <div>
    <NavBar page="quemsomos"/>
    <DivPag  imagem={IMGEquipe}/>
    <CardProfessor />
    <CardAluno />
    <Footer />
    </div>
  );
}

export default QuemSomosPage;
