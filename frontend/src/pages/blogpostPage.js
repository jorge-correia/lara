import React from "react";
import Footer from "../components/footer";
import NavBar from '../components/navbar'
import BlogPostPage from '../components/blogpost-page/blogpost-page'
import '../styles/estilo.css';

export default function BlogPage() {
  return (
      <div>
        <NavBar />
        <BlogPostPage
          title="Lorem Ipsum"
          author="Fulano de Tal"
          date="dezembro de 2020"
          body="Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
          imageUrl=""
        />
        <Footer />
      </div>
  )
}