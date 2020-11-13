import React, { useEffect } from "react";
import '../styles/estilo.css';
import '../styles/cursos.css';
import AOS from "aos";

export default function Cursos() {
  useEffect(() => {
    AOS.init();
    AOS.refresh();
  }, []);

  return(
    <p>hello</p>
    //componentes dinamicos
  )
}

