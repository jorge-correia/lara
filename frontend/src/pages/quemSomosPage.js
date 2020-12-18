import React from "react";
import NavBar from '../components/navbar';
import DivPag from "../components/divPag";
import Footer from "../components/footer";
import IMGEquipe from "../../public/assets/equipe.png";
import CardProfessor from "../components/card-professor/card-professor";
import CardProfessor2 from "../components/card-professor2";
import CardAluno from "../components/card-aluno";

const QuemSomosPage = () => {

  return( 
    <div>
    <NavBar page="quemsomos"/>
    <DivPag  imagem={IMGEquipe}/>
<<<<<<< HEAD
    <CardProfessor />
=======

    <CardProfessor2 />
>>>>>>> a07b64236df0e92e20edda6acccc66f303050c50
    <CardAluno />
    <Footer />
    </div>
  );
}

export default QuemSomosPage;
