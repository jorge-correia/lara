import React from "react";
import "./style.css";
import { Container } from 'react-bootstrap'
/**
 * title: Titulo do post
 * date: Data de publicacoa
 * body: Texto do post
 * imageUrl: Caminho para a imagem do post
 */

export default function BlogPostPage(props) {
  return(
    <Container>
        <p className="date">Publicado em { props.date }</p>
        <img className="head-image" src={ props.imageUrl } alt=""/>
        <div className="title--container">
            <h2>{ props.title }</h2>
            <h4>Escrito por { props.author }</h4>
        </div>
        <span className="body--container">
            { props.body }
        </span>
    </Container>
  );
}