import React from "react";
import DetalhePag from "../components/detalhePag";
import Teste1 from "../components/teste1";
import Teste2 from "../components/teste2";
import ExperimentosIndex from "../components/experimentosIndex";
import Colaboracao from "../../public/assets/colaboracao.png";
import Multilinguagem from "../../public/assets/multilinguagem.png";
import Contato from "../../public/assets/contato.png";
import Layout from "../components/layout";

export default function Home() {
  return( 
    <Layout>
      <DetalhePag />
      <ExperimentosIndex />
      <Teste1 comDiv={true} id="secao3" titulo="Colaboração" container="container sobre-colaboracao" desc="desc-colaboracao" conteudo="O LARA permite que os alunos possam resolver problemas e programar em equipes de modo que todos consigam interagir entre si e ver as mudanças que os colegas estão fazendo no trabalho, além de permitir que os alunos possam pedir ajuda a monitores e professores." image="img-colab" srcImage={Colaboracao} /> 
      <Teste2 id="secao4" titulo="Multilinguagem" container="container sobre-multilinguagem" image="img-mult" srcImage={Multilinguagem} conteudo="Atualmente, os experimentos do LARA podem ser programados em C++ e Python para melhor satisfazer professores e alunos. E futuramente pretendemos abranger muitas outras linguagens de programação  e outras formas de programação como em bloco."/>
      <Teste1 id="secao5" titulo="Entre em contato" container="container sobre-contato" desc="desc-contato" conteudo="Gostou do nosso projeto e gostaria de entrar em contato? Nos envie um email para o endereço lara@uesb.edu.br" image="img-contact" srcImage={Contato} />
    </Layout>
  );
  }
