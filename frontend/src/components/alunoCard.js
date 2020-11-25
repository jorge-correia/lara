import React, { useEffect } from "react";
import {Link} from "gatsby";
import '../styles/estilo.css';
import '../styles/quemsomos.css';
import { Grid, Col, Row, Container, Card } from "react-bootstrap"
import AOS from "aos";


export default function AlunoCard(props) {
  useEffect(() => {
    AOS.init();
    AOS.refresh();
  }, []);

 return(
    <div className="container d-flex justify-content-center">
        <div className="row row-cols-1 row-cols-md-2" >
            <div className="col mb-4">
                <div className="card card-aluno" data-aos="zoom-in">
                    <div className="card-body">
                        <h5 className="card-title">{props.nome}</h5>
                        <a className="aluno-lattes" href="#">{props.lattes}</a>
                        <div className="div-btn-link">
                        <button className="btn btn-link" type="button">
                            <a className="linkedin" to="https://www.linkedin.com/"><img src={props.srcImg} width="60" height="60"/></a>
                        </button>
                        </div> 
                    </div> 
                </div> 
            </div>      
        </div> 
    </div> 
    );
}