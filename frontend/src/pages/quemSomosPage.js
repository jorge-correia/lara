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
>>>>>>> 0aff264f36629e0a8b45bedfc0b218c9040a5784

    <CardProfessor2 />
    <CardAluno />
    <Footer />
    </div>
  );
}

export default QuemSomosPage;
