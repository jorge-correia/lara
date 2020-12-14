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
		<section class="secao" id="secao2"> 
     	 <div class="container">
       		 <h2 class="funcao">Professores</h2>
       		 <div id="deck-professores" class="card-deck">
					
		    </div>
			</div>
		</section>

    </div>
  );
  }
