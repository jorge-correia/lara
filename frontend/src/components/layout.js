import React from 'react';
import NavBar from '../components/navbar';
import Footer from '../components/footer'

export default function Layout(props){
  const estilo= {
    margin: "0",
     width: "100%",
     height: "100%",};
  return(
  <div style={estilo}>
    <NavBar page={props.page} />
    {props.children}
    <Footer />
  </div>
  );
}