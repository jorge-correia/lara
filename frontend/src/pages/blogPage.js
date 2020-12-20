import React from "react";
import Footer from "../components/footer";
import NavBar from '../components/navbar'
import PrimaryBlogPost from '../components/blogpost/primary-blogpost'
import SecondaryBlogPost from '../components/blogpost/secondary-blogpost'
import '../styles/estilo.css';
import '../styles/blog.css';

export default function BlogPage() {
  return (
      <div>
        <NavBar page="blog"/>
        <section className="secao" id="section">
          <div className="container">
            <h2 className="titulo-div">Blog</h2>
            <PrimaryBlogPost />
            <SecondaryBlogPost />
          </div>  
        </section>
        <Footer />
      </div>
  )
}
