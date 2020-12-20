import React from "react";
import "./style.css";
import { Container, Row, Col, Button } from 'react-bootstrap'
/**
 * 
 */

export default function SecondaryBlogPost() {
  return(
    <Container className="blogpost--container">
      <Row>
        <Col lg={6}>
          <div className="description--container">
            <h2 className="blogpost-title">Lorem Ipsum</h2>
            <div className="blogpost-data">
              <p>Fulano de Tal</p>
              <p>00/00/0000</p>
            </div>
            <div className="preview--container">
              <h3 className="blogpost-preview">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
              </h3>
            </div>
            <div className="button--container">
              <Button
                className="more-info--button"
              >
                Continue lendo
              </Button>{' '}
            </div>
          </div>
        </Col>
        <Col lg={6}>
          <div className="image--container-left">
            <div className="gray-background-left"></div>
          </div>
        </Col>
      </Row>
    </Container>
  );
}
