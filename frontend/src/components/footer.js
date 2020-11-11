import React from "react";
import '../styles/estilo.css';
import logoBranca from '../../public/assets/logo-branca.png'; 


export default function Footer() {
 
  return(
    <div className="final">
        <footer>
            <img src={logoBranca} height="60" alt="LARA"/>
        </footer>
    </div>
    
  );
}

