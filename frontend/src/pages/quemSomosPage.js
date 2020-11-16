import React from "react";
import { Link } from "gatsby";
import Footer from '../components/footer';
import NavBar from '../components/navbar';
import '../styles/estilo.css';
import '../styles/quemsomos.css';


export default function quemSomosPage() {
  return( 
    <div>
			<NavBar page="quemsomos"/>
			<section class="secao" id="secao1">
				<div className="container sobre-nos">
					<h2 className="titulo-nos">Quem somos?</h2>
					<p class="desc-nos">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
			</section>

			<section class="secao" id="secao2">
				<div class="container">
					<h2 class="funcao">Professores</h2>
					<div id="deck-professores" class="card-deck">
						//professores
					</div>
				</div>

				<div class="container"> 
					<h2 class="funcao titulo-alunos">Alunos</h2>
					<div id="deck-alunos" class="card-deck">
						//alunos
					</div>
				</div>
			</section>


    </div>
  );
  }
