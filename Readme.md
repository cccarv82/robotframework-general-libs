# <p align="center">Framework básico para demonstrar o uso de algumas bibliotecas para Robot Framework</p>
<p align="center" style="margin-bottom: 0px !important;">
  <a href="https://www.python.org/">
    <img  src="https://img.shields.io/badge/Python-00c0b5?style=for-the-badge&logo=python&logoColor=ffe46a" alt="" align="center">
  </a>
  <a href="https://robotframework.org/">
    <img  src="https://img.shields.io/badge/Robot%20Framework-00c0b5?style=for-the-badge&logo=robot%20framework&logoColor=grey" alt="" align="center">
  </a>
</p>


> Projeto base simples apenas para demonstrar a utilização das bibliotecas listadas abaixo. Essas bibliotecas podem ser utilizadas em qualquer tipo de projeto de automação que utilize Robot Framework, seja Web, Mobile, API e etc...



### Lista de Bibliotecas utilizadas

- [x] Metrics

> Cria um report HTML a partir do arquivo output.xml gerado pelo RF contendo métricas e informações bem estruturadas. Serve como um complemento para o report gerado pelo próprio RF.

- [x] Pabot

> Permite a execução de testes paralelos a nível de Suite ou de Test Case sem complicações!

- [x] Robocop

> Biblioteca para análise estática do código. Gera um relatório contendo os problemas encontrados para correção e garantia de boas práticas.

- [x] Tidy

> Formatador de código para Robot Framework!

- [ ] Crypto

> Biblioteca para utilização segura por meio de encriptação de senhas e tokens.

- [ ] Faker

> Faker é um pacote Python que gera dados falsos para utilização como massa de dados. A biblioteca Faker para RF permite a utilização de tal pacote de forma facilitada.



## 💻 Instalação das Bibliotecas



Antes de começar, verifique se você atendeu aos seguintes requisitos:

* Python deve estar instalado e configurado no PATH do sistema

* PIP deve estar instalado e configurado no PATH do sistema

* Robot Framework deve estar instalado e configurado no PATH do sistema

**[Metrics](https://github.com/adiralashiva8/robotframework-metrics)**:

```
pip install -U robotframework-metrics
```

**[Pabot](https://github.com/mkorpela/pabot)**:

```
pip install -U robotframework-pabot
```

**[Robocop](https://github.com/MarketSquare/robotframework-robocop)**:

```
pip install -U robotframework-robocop
```

**[Tidy](https://github.com/MarketSquare/robotframework-tidy)**:

```
pip install -U robotframework-tidy
```

**[Crypto](https://github.com/Snooz82/robotframework-crypto)**:

```
pip install -U robotframework-crypto
```

**[Faker](https://github.com/guykisel/robotframework-faker)**:

```
pip install -U robotframework-faker
```



## 🚀 Utilização das bibliotecas

> Procuro sempre utilizar um arquivo run.sh (.bat em windows) para execução dos comandos de execução dos testes, utilização de libs/tools e outras funções necessárias como pode ser observado no arquivo deste projeto. Os exemplos abaixo são os comandos usados neste projeto, para mais detalhes e descrição detalhada das diferças formas de utilização, basta consultar a página de cada biblioteca.

**Metrics**

```
robotmetrics  \
            -t True \
            --inputpath ./reports \
            --output output.xml
```

- -t True: parâmetro para incluir as tags de cada caso de teste no relatório
- --inputpath ./reports: indica o caminho onde o robotmetrics deve procurar o arquivo que será utilizado para geração do relatório, nesse caso irá buscar na pasta report a partir da raiz do projeto
- --output output.xml: indica o nome do arquivo xml gerado pelo RF com o resultado dos testes, pode ser omitido pois por padrão o nome é output.xml, porém eu prefiro que fique explícito

**Pabot**

```
pabot \
    --processes 5 \
    -d ./reports \
    conta.robot
```

- --processes 5: Define a quantidade de execuções em paralelo, nesse caso, até 5 suítes serão executadas em paralelo

- -d ./reports: define o diretório onde serão disponibilizados os arquivos resultantes da execução

- conta.robot: define uma suíte ou um diretório contendo diversas suítes para execução. Neste exemplo, apenas a suíte conta.robot será executada, digamos que nós temos 5 suítes no diretório tests/ do nosso projeto, para rodar todas as suítes basta substituir conta.robot por tests/

  > A biblioteca Pabot fornece suporte a todos os comandos que o Robot aceita, além de disponibilizar comandos próprios, como o --processes

**Robocop**

```
robocop \
        --report all \
        --output reports/robocop.txt \
        conta.robot
```

- --report all: O Robocop possui configuração para selecionar determinadas regras a serem reportadas pela biblioteca, utilizando o valor all a ferramenta reportará todas as inconsistências encontradas
- --output reports/robocop.txt: indica para a biblioteca que queremos que o relatório seja salvo em arquivo e informa a localização deste arquivo. Por padrão o relatório é apresentado no console
- conta.robot: indica a suíte que será verificada pela biblioteca. 







Linux e macOS:

\```

<comando_de_instalação>

\```



Windows:

\```

<comando_de_instalação>

\```



\## ☕ Usando <nome_do_projeto>



Para usar <nome_do_projeto>, siga estas etapas:



\```

<exemplo_de_uso>

\```



Adicione comandos de execução e exemplos que você acha que os usuários acharão úteis. Fornece uma referência de opções para pontos de bônus!



\## 📫 Contribuindo para <nome_do_projeto>

<!---Se o seu README for longo ou se você tiver algum processo ou etapas específicas que deseja que os contribuidores sigam, considere a criação de um arquivo CONTRIBUTING.md separado--->

Para contribuir com <nome_do_projeto>, siga estas etapas:



\1. Bifurque este repositório.

\2. Crie um branch: `git checkout -b <nome_branch>`.

\3. Faça suas alterações e confirme-as: `git commit -m '<mensagem_commit>'`

\4. Envie para o branch original: `git push origin <nome_do_projeto> / <local>`

\5. Crie a solicitação de pull.



Como alternativa, consulte a documentação do GitHub em [como criar uma solicitação pull](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).



\## 🤝 Colaboradores



Agradecemos às seguintes pessoas que contribuíram para este projeto:



<table>

 <tr>

  <td align="center">

​      <a href="#">

​        <img src="https://avatars3.githubusercontent.com/u/31936044" width="100px;" alt="Foto do Iuri Silva no GitHub"/><br>

​    <sub>

​     <b>Iuri Silva</b>

​    </sub>

   </a>

  </td>

  <td align="center">

​      <a href="#">

​        <img src="https://s2.glbimg.com/FUcw2usZfSTL6yCCGj3L3v3SpJ8=/smart/e.glbimg.com/og/ed/f/original/2019/04/25/zuckerberg_podcast.jpg" width="100px;" alt="Foto do Mark Zuckerberg"/><br>

​    <sub>

​     <b>Mark Zuckerberg</b>

​    </sub>

   </a>

  </td>

  <td align="center">

​      <a href="#">

​        <img src="https://miro.medium.com/max/360/0*1SkS3mSorArvY9kS.jpg" width="100px;" alt="Foto do Steve Jobs"/><br>

​    <sub>

​     <b>Steve Jobs</b>

​    </sub>

   </a>

  </td>

 </tr>

</table>





\## 😄 Seja um dos contribuidores<br>



Quer fazer parte desse projeto? Clique [AQUI](CONTRIBUTING.md) e leia como contribuir.



\## 📝 Licença



Esse projeto está sob licença. Veja o arquivo [LICENÇA](LICENSE.md) para mais detalhes.



[⬆ Voltar ao topo](#nome-do-projeto)<br>
