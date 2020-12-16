import React from "react";
import Layout from "../components/layout";
import '../styles/estilo.css';
import '../styles/login.css';
import Logo from "../../public/assets/logo.png";


export default function Login(){
  return(
    <div>
      <div className="logo">
        <a>Lara</a>
      </div>
      <div className="limiter">
        <div className="container-login100">
          <div className="wrap-login100">
            <form className="login100-form validate-form">
             <h3>Login</h3>

              <div className="wrap-input100 validate-input" data-validate = "Digite seu email">
                <input className="input100" type="text" name="email"></input>
                <span className="focus-input100" data-placeholder="Email"></span>
              </div>

              <div className="wrap-input100 validate-input" data-validate="Digite sua senha">
                <input className="input100" type="password" name="senha"></input>
                <span className="focus-input100" data-placeholder="Senha"></span>
              </div>

              <div className="container-login-btn">
                <div className="wrap-login-btn">
                  <button className="login-btn">
                    Entrar 
                  </button>
                </div>
              </div>

              <div className="text-center">
                <span className="txt1">
                  Ainda não possui uma conta?
                </span>
                <a className="txt2" href="#">
                  Cadastre-se 
                </a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
}
