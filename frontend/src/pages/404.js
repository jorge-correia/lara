import React from "react";
import '../styles/desenvolvendo.css';
import IMGRobot from "../../public/assets/robot.png";

const ErrorPage = () =>{
  return (
    <div>
      <a href="/" class="botao">
        <span>Página Inicial</span>
      </a>
      <div class="flex-box container-box">
        <div class="content-box"> 
          <p><img class="robot" data-aos="fade-left" src={IMGRobot} alt=""></img></p>
          <p>Página não encontrada!</p>
        </div>
      </div>
    </div>
  )
}

export default ErrorPage;
