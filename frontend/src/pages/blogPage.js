import React from "react";
import { useStaticQuery, graphql } from "gatsby";
import Footer from "../components/footer";
import NavBar from '../components/navbar'
import PrimaryBlogPost from '../components/blogpost/primary-blogpost'
import SecondaryBlogPost from '../components/blogpost/secondary-blogpost'
import '../styles/estilo.css';
import '../styles/blog.css';

export default function BlogPage() {
  const data = useStaticQuery(query);
  return (
      <div>
        <NavBar page="blog"/>
        <section className="secao" id="section">
          <div className="container">
            <h2 className="titulo-div">Blog</h2>
            {data. allStrapiPostsBlogs.edges.map(
                (item) =>
             <>
             { (() => {
              switch (((item.node.strapiId % 2) ==1)) {
                case true:   
                return (
                  <PrimaryBlogPost 
                    title={item.node.tituloPost}
                    author=""
                    date={item.node.dataPublicacaoPost}
                    preview={item.node.conteudoPost}
                    link="/blogpostPage"
                  />
                );

                case false:
                 return (
                  <SecondaryBlogPost 
                    title={item.node.tituloPost}
                    author=""
                    date={item.node.dataPublicacaoPost}
                    preview={item.node.conteudoPost}
                    link="/blogpostPage"
                  /> 

                );
              }
             })}
            
              </>
            )
                      
            }
                 
          </div>  
        </section>
        <Footer />
      </div>
  )
}

const query = graphql`
query ($formatString: String = "DD/MM/YYYY"){
  allStrapiPostsBlogs  {
    edges {
      node {
        tituloPost
        strapiId
        dataPublicacaoPost(formatString: $formatString)
        conteudoPost
      }
    }
  }
}
`
