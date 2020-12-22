import React from "react";
import "./style.css";
import { Container, Row, Col, Button } from 'react-bootstrap'
/**
 * title: titulo da postagem
 * author: autor da postagem
 * date: data de criacao
 * preview: pequena previa da postagem
 * link: link para a publicacao
 */

export default function PrimaryBlogPost(props) {
  return(
    <Container className="blogpost--container">
      <Row>
        <Col lg={6}>
          <div className="gray-background">
            <div className="image--container">
            </div>
          </div>
        </Col>
        <Col lg={6}>
          <div className="description--container">
            <h2 className="blogpost-title">{ props.title }</h2>
            <div className="blogpost-data">
              <p>{ props.author }</p>
              <p>{ props.date }</p>
            </div>
            <div className="preview--container">
              <h3 className="blogpost-preview">
                { props.preview }
              </h3>
            </div>
            <div className="button--container">
              <Button
                className="more-info--button"
                href={ props.link }
              >
                Continue lendo
              </Button>{' '}
            </div>
          </div>

        </Col>
      </Row>
    </Container>
  );
}