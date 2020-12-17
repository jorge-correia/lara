/**
 * Configure your Gatsby site with this file.
 *
 * See: https://www.gatsbyjs.com/docs/gatsby-config/
 */

module.exports = {
  plugins: [      
      {
          resolve: `gatsby-plugin-google-fonts`,
          options: {
              fonts: [
                  `Roboto:300`       
              ], display: 'swap'       
          }
      }
  ],
  plugins: [
    {
      resolve: `gatsby-source-strapi`,
      options: {
        apiURL: process.env.API_URL || `http://localhost:1337`,
        contentTypes: ["publicacoes","card-alunos", "card-professores", "cursos"],
        queryLimit: 1000,
      },
    },
  ],
}
