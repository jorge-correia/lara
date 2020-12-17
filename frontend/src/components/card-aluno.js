import React from "react";
import { useStaticQuery, graphql, Link } from "gatsby";
import '../styles/estilo.css';
import '../styles/quemsomos.css';
import IMG from  '../../public/assets/linkedin.png'



const CardAluno = () =>{
  const data = useStaticQuery(query);
  return(
      <div>
          <div className="container">
        	<h2 className="funcao titulo-alunos">Alunos</h2>
            <div className="container d-flex justify-content-center">
            <div className="row row-cols-1 row-cols-md-2" >
              {data.allStrapiCardAlunos.edges.map(
                (item) =>
                <div className="col mb-4">
                <div className="card card-aluno" data-aos="zoom-in">
                  <div className="card-body">
                    <h5 className="card-title">{item.node.nomeAluno}</h5>
                    <a className="aluno-lattes" href="#">{item.node.lattesAluno}</a>
                    <div className="div-btn-link">
                      <button className="btn btn-link" type="button">
                        <Link className="linkedin" to={item.node.linkedinAluno}>
                            <img src={IMG} width={60} height={60} alt="foto aluno" /> </Link>
                      </button>
                    </div> 
                  </div> 
                </div> 
              </div> )}
		  </div>
			</div>
		   </div> 
	      
  
             
    </div>
    );
}

const query = graphql`
query {
allStrapiCardAlunos {
edges {
  node {
    strapiId
    nomeAluno
    linkedinAluno
    lattesAluno
    descricaoAluno
    fotoAluno {
      url
    }
  }
}
}
}`
export default CardAluno;
