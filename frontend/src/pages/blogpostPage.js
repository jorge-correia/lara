import React from "react";
import { useStaticQuery, graphql } from "gatsby";
import Footer from "../components/footer";
import NavBar from '../components/navbar'
import BlogPostPage from '../components/blogpost-page/blogpost-page'
import '../styles/estilo.css';
import IMG from "../../public/assets/novoLab.jpg"

export default function BlogPage() {
  const data = useStaticQuery(query);
  return (
      <div>
        <NavBar />
        <BlogPostPage
          title={data.strapiPostsBlogs.tituloPost}
          author="Vinicius"
          date={data.strapiPostsBlogs.dataPublicacaoPost}
          body={data.strapiPostsBlogs.conteudoPost}
          imageUrl={IMG}
        />
        <Footer />
      </div>
  )
}


const query = graphql`
  query {
    strapiPostsBlogs {
      conteudoPost
      dataPublicacaoPost(formatString: "DD/MM/YY")
      tituloPost
    }
  }
`;