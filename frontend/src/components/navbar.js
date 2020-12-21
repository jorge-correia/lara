import React from "react";
import '../styles/estilo.css';
import { Navbar, Nav, Button } from "react-bootstrap"
import logo from '../../public/assets/logo.png'; 

export default function NavBar(props) {

  function getClassName(page) {
    return (props.page == page)? "nav-link active" : "nav-link"
  }
 
  return(
    <Navbar
      bg="white"
      expand="lg"
      className="navbar justify-content-between"
    >
      <Navbar.Brand href="/" className="nav-logo-div">
        <img
          alt=""
          src={logo}
          className="nav-logo"
        />{' '}
      </Navbar.Brand>
      <Navbar.Toggle
        className="nav-toggle"
        aria-controls="basic-navbar-nav"
      />
      <Navbar.Collapse id="basic-navbar-nav">
        <Nav className="mx-auto">
          <Nav.Link
            className={getClassName("laboratorios")}
            href="/laboratoriosPage"
          >
            Laboratórios
          </Nav.Link>
          <Nav.Link
            className={getClassName("cursos")}
            href="/cursosPage"
          >
            Cursos
          </Nav.Link>
          <Nav.Link
            className={getClassName("quemSomos")}
            href="/quemSomosPage"
          >
            Quem somos
          </Nav.Link>
          <Nav.Link
            className={getClassName("publicacoes")}
            href="/publicacoesPage"
          >
            Publicações
          </Nav.Link>
          <Nav.Link
            className={getClassName("blog")}
            href="/blogPage"
          >
            Blog
          </Nav.Link>
          <Nav.Link
            className="nav-link mobile"
            href="/loginPage"
          >
            Login
          </Nav.Link>
        </Nav>
      </Navbar.Collapse>
      <Button
        className="btn-login desktop"
        href="/loginPage"
      >
        Login
      </Button>{' '}
    </Navbar>
    
  );
}
