import React from "react";
import '../styles/desenvolvendo.css';
import IMGRobot from "../../public/assets/robot.png";

const DevPage = () =>{
  return (
    <div>
      <a href="#" class="botao">
        <span>Página Inicial</span>
      </a>
      <div class="flex-box container-box">
        <div class="content-box"> 
          <p><img class="robot" data-aos="fade-left" src={IMGRobot}></img></p>
          <p>Desculpe-nos pelos transtornos, estamos em desenvolvimento!</p>
        </div>
      </div>
    </div>
  )
}

export default DevPage;
