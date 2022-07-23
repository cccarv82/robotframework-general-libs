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

> Faker é um pacote Python que gera dados falsos para utilização como massa de dados. RF é feito em Python e permite total liberdade para extensão do framework usando packages Python prontos ou que você mesmo venha a desenvolver para estender as funcionalidades do framework conforme sua necessidade.



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
pip install -U Faker
```

> O projeto possui o arquivo requirements.txt que contém as bibliotecas citadas aqui e necessárias para executar este projeto, para instalar a partir deste arquivo, basta executar o comando:
>
> `pip install -r requirements.txt`

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

- --report all: O Robocop possui configuração para selecionar determinadas regras a serem reportadas pela biblioteca, utilizando o valor all a ferramenta utilizará todas as infos disponíveis

- --output reports/robocop.txt: indica para a biblioteca que queremos que o relatório seja salvo em arquivo e informa a localização deste arquivo. Por padrão o relatório é apresentado no console

- conta.robot: indica a suíte que será verificada pela biblioteca. A biblioteca aceita tanto suítes específicas quanto diretórios e até a combinação dos dois. Ex.: `robocop -r all conta.robot tests suite.robot` é um comando válido e faria a verificação nas suítes conta.robot e suite.robot além de todas as suítes encontradas dentro do diretório tests

  > A biblioteca Rebocop também permite a criação de regras próprias para validações! Todas as informações estão disponíveis na documentação da biblioteca

**Crypto**

> Crypto Library é uma biblioteca global, onde o funcionamento, de forma resumida é, define-se uma senha privada que será usada para descriptografar dados, seta-se essa senha como uma variável de ambiente na máquina que executará o código, encripta o dado desejado e utiliza no código.
> A biblioteca para RF auxilia na utilização do dado e na descriptografia do dado caso deseje. O passo a passo abaixo mostra como fazer a configuração da senha e como utilizar no código

- Configurando após instalar:

```
Digitar no terminal: CryptoLibrary
Esse comando mostrará no terminal o seguinte menu:
? What do you want to do? (Use arrow keys)
 » Encrypt
   Decrypt
   Open config
   Quit
   
Devemos primeiro criar os arquivos que conterão os dados privados de criptografia, acessando o menu na seguinte ordem:
Open config --> Configure key pair --> Generate key pair --> Yes --> Yes
Nesse momento, será pedido uma senha, nesse exemplo, usaremos a senha 'senhasupersegura'
Os arquivos serão gerados e o menu voltará a aparecer, vamos agora encriptar uma senha para nosso exemplo. 

Back --> Back --> Encrypt
Digite o dado que deseja encriptar, para este exemplo, vamos usar 'senha123'
Será apresentada a string do dado encriptado, no nosso exemplo, foi:
crypt:Xw1HxJTEsPJPYrlWTGhZ6ImyKrEu+jEuOVKlKQrUrE78WCw+jlF49+f7vY7wrn5TKtf6X6jRm5g=

Podemos fechar o menu na opção Quit

Para finalizar a configuração de ambiente, devemos setar como variável de ambiente a senha que usaremos para realizar a descriptografia dos dados, no nosso exemplo foi 'senhasupersegura'. O comando para setar a variável de ambiente é:
- MacOs / Linux: export private_key_password='senhasupersegura'
- Windows: setx private_key_password senhasupersegura
```

- Agora que temos a criptografia configurada, vamos utilizar em nosso código. 

  Importando a biblioteca:

  ```
  *** Settings ***
  Library            CryptoLibrary             %{private_key_password}
  ```

  Vamos definir uma variável para guardar nossa senha criptografada:

  ```
  *** Variables ***
  ${senha_protegida}
  ...    crypt:Xw1HxJTEsPJPYrlWTGhZ6ImyKrEu+jEuOVKlKQrUrE78WCw+jlF49+f7vY7wrn5TKtf6X6jRm5g=
  ```

  Agora vamos criar um Test Case que vai imprimir a senha criptografada, descriptografar a senha e imprimir a senha descriptografado:

  ```
  *** Test Cases ***
  Quando solicito a impressão da minha senha bancária
      Log To Console                        ${senha_protegida}
      ${senha_desprotegida}                 Get Decrypted Text      ${senha_protegida}
      Log To Console												${senha_desprotegida}
  ```

  Temos como resultado da execução do teste:

  ```
  ==============================================================================
  Conta :: Suite para testar a classe ContaLibrary.py                           
  ==============================================================================
  Quando solicito a impressão da minha senha bancária                   >
  .Senha Criptografada: crypt:Xw1HxJTEsPJPYrlWTGhZ6ImyKrEu+jEuOVKlKQrUrE78WCw+jlF49+f7vY7wrn5TKtf6X6jRm5g=
  ..Senha Descriptografada: senha123
  Quando solicito a impressão da minha senha bancária                   | PASS |
  ------------------------------------------------------------------------------
  Conta :: Suite para testar a classe ContaLibrary.py                   | PASS |
  1 test, 1 passed, 0 failed
  ==============================================================================
  ```

  > A impressão do dado descriptografado é apenas um exemplo para mostrar o funcionamento da biblioteca. Para dados sensíveis, como senhas e tokens por exemplo, use o dado criptografado.
  >
  > Obs.: Para visualizar a impressão no console, execute a suite com robot ao invés de pabot



**Faker**
massa.py:

```python
from faker import Faker
fake = Faker()


def valor_deposito():
    valor_deposito = fake.pyint(min_value=1000, max_value=5000)
    return valor_deposito


def valor_saque():
    valor_saque = fake.pyint(min_value=100, max_value=500)
    return valor_saque

```

conta.robot:

```
*** Settings ***
Library                                           ContaLibrary.py
Library                                           massa.py
*** Test Cases ***
Quando faço um saque deve deduzir o valor do meu saldo
    Abrir Conta
    ${valor_deposito}                     Valor Deposito
    Deposita                              ${valor_deposito}
    ${valor_saque}                        Valor Saque
    Saca                                  ${valor_saque}
    ${saldo_esperado}                     Evaluate
    ...                                   ${valor_deposito}-${valor_saque}-2
    ${saldo_final}                        Obter Saldo
    Should Be Equal                       ${saldo_final}          ${saldo_esperado}
```

- No arquivo massa.py implementamos um código Python para utilização da biblioteca Faker onde um valor de número inteiro é gerado entre valores mínimos e máximos e esse valor é retornado na chamada do método

- No arquivo conta.robot importamos essa biblioteca criada por nós e utilizamos a chamada do método como uma palavra chave normal do RF para atribuir o valor gerado na biblioteca à variável no RF

  ```python
  def valor_deposito --> Valor Deposito --> ${valor_deposito}
  def valor_saque --> Valor Saque --> ${valor_saque}
  ```

  

## 📝 Para executar o projeto, basta executar o arquivo run.sh

```
chmod + x run.sh
./run.sh
```



[⬆ Voltar ao topo](#nome-do-projeto)<br>
