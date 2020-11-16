import React from "react";
import { Link } from "gatsby"
import Footer from '../components/footer';
import NavBar from '../components/navbar'


export default function Home() {
  return( 
    <div>
    <NavBar/>
    <Link to="/publicacoesPage">Hi lorena</Link>
    <Footer/>
    </div>
  );
  }
