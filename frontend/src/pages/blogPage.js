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
            <PrimaryBlogPost
              title="Lorem Impsum"
              author="Fulano de Tal"
              date="00/00/0000"
              preview="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
              link="/blogpostPage"
            />
            <SecondaryBlogPost
              title="Lorem Impsum"
              author="Fulano de Tal"
              date="00/00/0000"
              preview="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
              link="/blogpostPage"
            />
          </div>  
        </section>
        <Footer />
      </div>
  )
}