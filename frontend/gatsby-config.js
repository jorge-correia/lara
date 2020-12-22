module.exports = {
  plugins: [      
        {
            resolve: "gatsby-plugin-web-font-loader",
            options: {
                custom: {
                families: ["Roboto, Regular"],
                urls: ["/fonts/fonts.css"],
                },
            },
        },
        {
          resolve: "gatsby-plugin-google-fonts",
          options: {
              fonts: [
                  "Roboto:300" 
              ], display: "swap"       
          }
        },
        {
            resolve: "gatsby-source-strapi",
            options: {
                apiURL: process.env.API_URL || "http://localhost:1337",
                contentTypes: ["publicacoes","card-alunos", "card-professores", "cursos", "experimentos", "posts-blogs"],
                queryLimit: 1000,
            },
        },
    ],

}
