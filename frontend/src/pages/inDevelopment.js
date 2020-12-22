import React from "react";
import '../styles/desenvolvendo.css';
import IMGRobot from '../../public/assets/robot.png';

const DevPage = () =>{
  return (
    <div>
      <a href="/" className="botao">
        <span>Página Inicial</span>
      </a>
      <div className="flex-box container-box">
        <div className="content-box"> 
          <img className="robot" src={IMGRobot} alt=""></img>
          <p>Desculpe-nos pelos transtornos, estamos em desenvolvimento!</p>
        </div>
      </div>
    </div>
  )
}

export default DevPage;
