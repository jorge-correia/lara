import React from "react";
import { useStaticQuery, graphql } from "gatsby";
import Footer from "../components/footer";
import NavBar from '../components/navbar'
import BlogPostPage from '../components/blogpost-page/blogpost-page'
import '../styles/estilo.css';

export default function BlogPage() {
  const data = useStaticQuery(query);
  return (
      <div>
        <NavBar />
        <BlogPostPage
          title={data.strapiPostsBlogs.tituloPost}
          author="Fulano de Tal"
          date={data.strapiPostsBlogs.publicacaoPost}
          body={data.strapiPostsBlogs.conteudoPost}
          imageUrl=""
        />
        <Footer />
      </div>
  )
}



const query = graphql`
query ($formatString: String = "DD/MM/YYYY") {
  strapiPostsBlogs(strapiId: {eq: 1}) {
    conteudoPost
    tituloPost
    dataPublicacaoPost(formatString: $formatString)
  }
}
`