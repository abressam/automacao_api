<h1 align="center">
 🤖 RoboTron 🤖 <br>Projeto Final<br><br>
<img alt="Compass.UOL" width="200" src="https://github.com/abressam/RoboTron_Amanda_Bressam_Compass/blob/develop/assets_readme/compass.svg">
</h1>

<p align="center">
  <a href="https://github.com/abressam"><img alt="Profile" width="120" src="https://github.com/abressam/RoboTron_Amanda_Bressam_Compass/blob/develop/assets_readme/github_profile.svg"></a>
  <a href="https://docs.python.org/3/"><img alt="Python" width="120" src="https://github.com/abressam/RoboTron_Amanda_Bressam_Compass/blob/develop/assets_readme/python.svg"></a>
  <a href="https://robotframework.org/"><img alt="Robot Framework" width="175" src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/robot_framework.svg"></a>
</p><br>

<p align="center">
  Oii, tudo bem? <br>
  Seja bem-vindo(a) ao meu projeto! 🥰<br>
  Vamos começar?<br><br>
  
  <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/intro.gif" alt="First gif">
  
</p>

# 🚀 Introdução

<p align="justify">
  Esse projeto representa a etapa final do Programa de Bolsas da Compass.UOL e possui o objetivo de realizar uma cobertura de testes para todas as rotas da API ServeRest, além de documentar os resultados obtidos. Dessa forma, está disposto nos tópicos a seguir os conteúdos presentes neste documento:
</p>

1. [Automação de testes](#automacao)
2. [Sobre a API ServeRest](#serverest)
3. [Instalação das ferramentas](#instalacao)
4. [Como baixar o repositório](#baixar_repo)
5. [Como acessar o repositório no Visual Studio Code](#repo_vscode)
6. [Organização do projeto](#organizacao)
7. [Acessando os testes do projeto](#acessar_testes)
8. [Relatório dos resultados obtidos](#resultados)
9. [Ferramentas utilizadas](#ferramentas)
10. [Referências e agradecimentos](#referencias)

<div id='automacao' />

# 🔧 Automação de testes

<p align="justify">
  A automação de testes basea-se no uso de ferramentas capazes de controlar a execução de cada testes de acordo com a estratégias estabelecidas. Ao iniciar a automação o quanto antes no projeto, maior será a possibilidade de melhoria no desempenho do software, redução no tempo de execução dos testes, repetição dos testes simulados em cenários específicos, evitar falhas humanas, além de outros fatores que impactaram para reduzir o tempo e o custo final do software.<br>
 Assim, esse projeto utiliza algumas ferramentas para realizar a automação de testes na API ServeRest que são descritas mais detalhadamente no tópico "3. Instalação das ferramentas".
</p>

<div id='serverest' />

# 🛍️ Sobre a API ServeRest

<p align="justify">
  A ServeRest é uma API que simula uma loja virtual, sendo assim, é possível testar diferentes fluxos que um cliente real ou que o administrador da loja poderia percorrer. Há diversos percursos diferentes que podem ser testados, um exemplo para cada um seria: o cliente realizar o ato de compra de produtos e o administrador realizar o cadastro de novos produtos.
  
  `Cada teste realizado será discutido com maior profundidade no tópico "8. Relatório dos resultados obtidos".`
  
</p>

## 🗺️ Mapa mental da API

<p align="justify">
  O mapa mental abaixo representa todas as rotas (endpoints) da API ServeRest, com os respectivos status code possíveis de serem obtidos, de acordo com a <a href="https://serverest.dev/">documentação oficial</a>. A organização do mapa é representada da seguinte forma: o lado direito representa fluxo prioritário e o lado esquerdo o fluxo não prioritário.
<br>
</p>

* **Fluxo prioritário**: são as rotas essenciais a serem testadas (/login, /usuarios e /produtos);
* **Fluxo não prioritário**: são rotas que podem ser testadas posteriormente (/carrinhos).<br><br>

<div align="center">
<img alt="Mapa mental ServeRest" src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/serverest_api.png">
</div>

<div id='instalacao' />

# 🧰 Instalação das ferramentas

<p align="justify">
  Neste tópico são descritas todas as ferramentas necessárias para acessar o projeto em seu computador. Entretanto, os passos informados são referentes ao sistema operacional Windows na versão de 64 bits.
</p>

`IMPORTANTE: siga todos os passos a seguir para garantir o funcionamento correto do projeto!`

1. [Instalação do **Python**](#python)
2. [Instalação do **Node.JS**](#node)
3. [Instalação do **Robot Framework**](#robot)
4. [Instalação do **Visual Studio Code**](#vscode)

<div id='python' />

## 🐍 Instalação do Python

<p align="justify">
  O Python é a linguagem de programação utilizada nesse projeto para interação com o Robot Framework. No entanto, será necessária a instalação da versão **3.8.2** da linguagem para evitar falhas de inconsistência.<br>
 Os passos da instalação estão descritos a seguir:
</p>

1. <a href="https://www.python.org/downloads/release/python-382/">Clique aqui</a> para acessar a página de _Downloads_ na versão correta;
2. Ao final da página na sessão _Files_, selecione a opção **Windows x86-64 executable installer**, baixe o arquivo e execute-o;

<div align="center">
<br><img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/python_version.png" width=600><br><br>
</div>

3. Na tela inicial de instalação do Python, selecione a opção **Add Python 3.8 to PATH** e clique em _Install Now_;

`IMPORTANTE: não esqueça de selecionar a opção do PATH, caso contrário haverá problemas para acessar o Python!`

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/python382.png" width=400><br><br>
</div>

4. Continue seguindo adiante até finalizar todos os passos da instalação.
5. Para conferir se foi instalado corretamente, na barra de pesquisa do Windows digite **cmd**, abra o Prompt de Comando e digite **python**.

<div align="center">
<br><img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/prompt_python.png">
</div>

6. Agora o Python está instalado na sua máquina!

<div id='node' />

## 🟢 Instalação do Node.JS

<p align="justify">
  O Node.JS será utilizado para auxiliar uma das bibliotecas que será utilizada no Robot Framework.<br>
 Os passos da instalação estão descritos a seguir:
</p>

1. <a href="https://nodejs.org/en/">Clique aqui</a> para acessar a página oficial do Node.JS;
2. Instale a versão que possui o nome **LTS** e execute o arquivo;
3. Conclua todos os passos da instalação;
4. Agora o Node.JS está instalado!

<div id='robot' />

## 🤖 Instalação do Robot Framework

<p align="justify">
  O Robot Framework é um exemplo de ferramenta de automação de testes desenvolvido em Python que apresenta uma sintaxe simples e de fácil leitura, podendo ser utilizado em diferentes tecnologias e interfaces.<br>
 Os passos da instalação estão descritos a seguir:
</p>

1. Abra a barra de pesquisas do Windows e digite **cmd** para abrir o Prompt de Comando;
2. Informe no terminal o seguinte comando, obtido no <a href="https://robotframework.org/?tab=1#getting-started">site oficial do Robot</a>:

```
pip install robotframework
```

3. Para confirmar a instalação, informe no terminal o seguinte comando:

```
robot --version
```

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/robot.png"><br><br>
</div>

4. A seguir, instalaremos a primeira dependência utilizada no projeto, a <a href="https://robotframework-browser.org/#installation">Browser Library</a>, utilizando o seguinte comando no terminal:

```
pip install robotframework-browser
```

5. A segunda dependência a ser instalada é a  <a href="https://marketsquare.github.io/robotframework-requests/">Request Library</a> que será utilizada para fazer as requisições HTTPS, utilizando o comando a seguir:

```
pip install robotframework-requests
```

6. A terceira e última dependência a ser instalada é a  <a href="https://pypi.org/project/robotframework-faker/">Faker Library</a> que será utilizada para simular dados, utilizando o comando a seguir:

```
pip install robotframework-faker
```

7. Agora está tudo pronto e configurado!

<div id='vscode' />

## 🔨 Instalação do Visual Studio Code

<p align="justify">
  O Visual Studio Code é a IDE (Integrated Development Environment) utilizada para o desenvolvimento do projeto e será necessária para acessá-lo.<br>
 Os passos da instalação estão descritos a seguir:
</p>

1. <a href="https://code.visualstudio.com/">Clique aqui</a> para acessar a página oficial do Visual Studio Code;
2. Selecione a opção **Download for Windows**, baixe o arquivo e execute-o;
3. Conclua todos os passos da instalação;
4. Agora o VSCode está instalado!

### 💡 Dicas de extensões para o Visual Studio Code
<p align="justify">
  A seguir será informado sugestões de extensões para instalar na IDE que facilitaram no momento de visualizar os arquivos do projeto.
</p>

1. Abra o Visual Studio Code e selecione a opção _Extensions_ pelo atalho _Ctrl+Shift+X_ ou clicando no ícone a seguir:

<div align="center">
 <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_Compass/blob/main/assets_readme/button_extensions.png" width=600><br><br>
</div>

2. Na barra de pesquisa, informe cada uma das seguintes opções e clique em _install_.

<div align="center">
  
| Extensão | Ícone |
| ---------- | ------ |
| Hyper Term Theme | <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/extension_1.png" width=50> |
| Material Icon Color | <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/extension_2.png" width=50> |
| Rainbow Brackets | <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/extension_3.png" width=50> |

</div>

3. Agora as extensões foram instaladas no VSCode!

<div align="center">
 <br>
<img src="https://thumbs.gfycat.com/DangerousFantasticBabirusa-max-1mb.gif" alt="First gif">
</div>

<div id='baixar_repo' />

# 🔽 Como baixar o repositório

<p align="justify">
Existem duas maneiras de possuir este projeto em seu computador, escolha abaixo qual preferir!
</p>

* [Baixando o projeto através do **GIT**](#git)
* [Baixando o projeto por **pasta compactada**](#compactada)

<div id="git" />

##  Baixando o projeto através do GIT

<p align="justify">
Através da ferramenta de versionamento de código GIT é possível clonar esse repositório em seu computador. Para isso, siga os seguintes passos:
</p>

1. <a href="https://git-scm.com/">Clique aqui</a> para acessar a página oficial do GIT;
2. Selecione a opção _Download for Windows_, baixe o arquivo e execute-o;
3. Siga todos os passos até finalizar a instalação;
4. Após instalado, crie uma pasta vazia na Área de Trabalho (ou no diretório que preferir);
5. Abra a pasta e com o botão direito do mouse selecione a opção **Git Bash Here**;
6. Informe dentro do terminal o comando abaixo (_git clone_ seguido da _URL do repositório_). A URL também pode ser obtida acessando o repositório e clicando no botão verde escrito _Code_;

```
git clone https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal.git
```

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_Compass/blob/develop/assets_readme/git_clone.png" width=350>
</div>

7. Agora o projeto está no seu computador!

<div id="compactada" />

## 📁 Baixando o projeto por pasta compactada

<p align="justify">
Siga os passos abaixo para baixar o projeto:
</p>

1. Clique no botão verde escrito _Code_ e selecione a opção **Download ZIP**;

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_Compass/blob/develop/assets_readme/zip_repo.png" width=350>
</div>

2. Após o arquivo ser baixado, clique com o botão direito e selecione a opção para descompactar a pasta;
3. Agora o projeto está no seu computador!

<div id="repo_vscode" />

# 🔓 Como acessar o repositório no Visual Studio Code

<p align="justify">
Após a instalação das ferramentas e o download do projeto, poderemos acessá-lo através do VS Code! Siga os passos abaixo:
</p>

1. Abra o _Visual Studio Code_, clique na opção _File_ do menu de ferramentas e em seguida _Open folder..._ ou acesse pelo atalho (_Ctrl O + Ctrl K_);
2. Selecione a pasta do repositório no seu computador e clique para abrir, após carregado ficará da seguinte forma:

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/vs_code.png" width=800><br><br>
</div>

3. Para visualizar os arquivos presente nesse diretório, clique na flecha localizada ao lado de cada pasta;

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/open_folders_project_vscode.png" width=800><br><br>
</div>

4. Agora o projeto está aberto no VSCode!

<div id='organizacao' />

# 🗃️ Organização do projeto

<p align="justify">
O projeto de automação encontra-se no diretório "serverest_api" e está estruturado baseado no modelo Service-Object, possuindo algumas adaptações para melhor organização dos arquivos.
</p>

<div align="center">

| Pasta | Conteúdo | Imagem |
| ---------- | ------ | ------- |
| Keywords | Possui arquivos com as keywords correspondentes a cada endpoint. | <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/keywords.png" width=200> |
| Reports | Arquivos .html e .xml que retornam os resultados obtidos após rodar os testes. | <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/reports.png" width=200> |
| Support | Diretório que contém arquivos que auxiliam na realização dos testes. | <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/support.png" width=200> |
| Tests | Contém arquivos referêntes a testes de cenário positivos e negativos para cada endpoint. | <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/tests.png" width=200> |

</div>

<div id='acessar_testes' />

# 🗄️ Acessando os testes do projeto

<p align="justify">
Como visto anteriormente, os testes estão separados por endpoints e discribuídos em dois arquivo: cenários positivos e cenários negativos. Segue abaixo a explicação de como rodar todos os testes de um arquivo ou rodar apenas um teste específico.
</p>

`IMPORTANTE: os testes foram realizados através da API local da ServeRest, por conta disso, antes de iniciar os testes, realize os seguintes passos para inicializar a ServeRest localmente:`<br>

1. Na barra de pesquisas do Windows, digite **cmd** para abrir o Prompt de Comando;
2. Informe no terminal o seguinte comando:

```
npx serverest
```

3. Aguarde o processo terminar, apresentando o seguinte resultado:

<div align="center">
<img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/api_local.png" width=600>
</div>

`IMPORTANTE: o terminal em que foi inicializado a API deve manter-se aberto durante todo o tempo em que estiver rodando os testes, caso contrário ocorerrá um erro por não encontrar a URI base da API.`

## 1️⃣ Acessando todos os testes de um arquivo

<p align="justify">
Com o projeto aberto no Visual Studio Code, acesse o terminal utilizando o atalho Ctrl + ' e siga os passos abaixo para executar o arquivo desejado, separados respectivamente em cenários válidos (valid) e inválidos (invalid) de cada endpoint:
</p>

* Executando os testes do endpoint **/login**

```
robot -d  ./serverest_api/reports ./serverest_api/tests/login/valid_login_test.robot
```

```
robot -d  ./serverest_api/reports ./serverest_api/tests/login/invalid_login_test.robot
```

* Executando os testes do endpoint **/produtos**

```
robot -d  ./serverest_api/reports ./serverest_api/tests/products/valid_product_test.robot
```

```
robot -d  ./serverest_api/reports ./serverest_api/tests/products/invalid_product_test.robot
```

* Executando os testes do endpoint **/carrinhos**

```
robot -d  ./serverest_api/reports ./serverest_api/tests/shopcart/valid_shopcart_test.robot
```

```
robot -d  ./serverest_api/reports ./serverest_api/tests/shopcart/invalid_shopcart_test.robot
```

* Executando os testes do endpoint **/usuarios**

```
robot -d  ./serverest_api/reports ./serverest_api/tests/user/valid_user_test.robot
```

```
robot -d  ./serverest_api/reports ./serverest_api/tests/user/invalid_user_test.robot
```

## 2️⃣ Acessando testes individualmente

<p align="justify">
Para executar um teste específico é necessário acessar a tag referente ao teste desejado, para isso, abra o arquivo de teste e localize em cada cenário o argumento [tags]. Veja um exemplo abaixo:
</p>

<div align="center">
 <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/tags.png" width=600>
</div>

<p align="justify">
Cada cenário de teste está numerado em sequência, sempre iniciando em 1. Assim, o processo de executar o teste é semelhante a etapa anterior, porém é necessário adicionar o comando (-i nome_da_tag) entre a localização do diretório reports e do diretório do arquivo de teste. Veja um exemplo abaixo de como acessar apenas o primeiro teste, referente ao cenário de testes positivos do endpoint /usuarios:
</p>

```
robot -d  ./serverest_api/reports -i 1 ./serverest_api/tests/user/valid_user_test.robot
```

<div id='resultados' />

# 📝 Relatório dos resultados obtidos

<p align="justify">
Nesta sessão está a comparação dos resultados obtidos nos testes em relação a documentação oficial da API ServeRest. Logo, os testes foram desenvolvidos seguindo rigorosamente os resultados esperados na documentação oficial, entretanto, alguns casos apresentam _status FAIL_ que representam falhas encontradas na documentação oficial.<br>
A seguir, os casos de teste estão separados em seus respectivos endpoints e em cenários positivos e negativos:
</p>

1. [Resultados do endpoint **/login**](#login)
2. [Resultados do endpoint **/produtos**](#produtos)
3. [Resultados do endpoint **/carrinhos**](#carrinhos)
4. [Resultados do endpoint **/usuarios**](#usuarios)

* Número total de testes: 44
* Número de testes do **endpoint /login**: 11
* Número de testes do **endpoint /produtos**: 10
* Número de testes do **endpoint /carrinhos**: 13
* Número de testes do **endpoint /usuarios**: 10


<div id='login' />

## 📜 Resultados do endpoint /login

### ✔️ Cenários de teste **positivo**

<div align="center">
 
| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |
| ------ | ------ | ------ | ------ | :------: |
| Test Case 1: POST Valid Authorized Static User Login 200 | Validar o login de um usuário estático com autorização de administrador | status code: 200 <br> message: "Login realizado com sucesso" | status code: 200 <br> message: "Login realizado com sucesso" | PASS |
| Test Case 2: POST Valid Unauthorized Static User Login 200 | Validar o login de um usuário estático sem autorização de administrador | status code: 200 <br> message: "Login realizado com sucesso" | status code: 200 <br> message: "Login realizado com sucesso" | PASS |
<br>
</div>

### ❌ Cenários de teste **negativo**

<div align="center">

| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |
| ------ | ------ | ------ | ------ | :------: |
| Test Case 1: POST Login Static User With Invalid Email 400 | Validar o login com e-mail inválido | status code: 400 <br> message: "Email e/ou senha inválidos" | status code: **401** <br> message: "Email e/ou senha inválidos" | FAIL |
| Test Case 2: POST Login Static User With Invalid Password 400 | Validar o login com senha inválida | status code: 400 <br> message: "Email e/ou senha inválidos" | status code: **401** <br> message: "Email e/ou senha inválidos" | FAIL |
| Test Case 3: POST Invalid Static User Login 400 | Validar o login com os campos senha e e-mail inválidos | status code: 400 <br> message: "Email e/ou senha inválidos" | status code: **401** <br> message: "Email e/ou senha inválidos" | FAIL |
| Test Case 4: POST Login Static User With Empty Email 400 | Validar o login com e-mail em vazio | status code: 400 <br> message: "Email e/ou senha inválidos" | status code: 400 <br> **email: 'email não pode ficar em branco'** | FAIL |
| Test Case 5: POST Login Static User With Empty Password 400 | Validar o login com senha vazia | status code: 400 <br> message: "Email e/ou senha inválidos" | status code: 400 <br> **password: 'password não pode ficar em branco'** | FAIL |
| Test Case 6: POST Login Static User With Empty Email And Password 400 | Validar o login com os campos senha e e-mail vazio | status code: 400 <br> message: "Email e/ou senha inválidos" | status code: 400 <br> **email: 'email não pode ficar em branco', password: 'password não pode ficar em branco'** | FAIL |
| Test Case 7: POST Login Static User With Empty Spaces Email 400 | Validar o login com e-mail preenchido por espaços em branco | status code: 400 <br> message: "Email e/ou senha inválidos" | status code: 400 <br> **email: 'email deve ser um email válido'** | FAIL |
| Test Case 8: POST Login Static User With Empty Spaces Password 400 | Validar o login com senha preenchida por espaços em branco | status code: 400 <br> message: "Email e/ou senha inválidos" | status code: **401** <br> message: "Email e/ou senha inválidos" | FAIL |
| Test Case 9: POST Login Static User With Empty Spaces Email And Password 400 | Validar o login com os campos senha e e-mail preenchidos por espaços em branco | status code: 400 <br> message: "Email e/ou senha inválidos" | status code: 400 <br> **email: 'email deve ser um email válido'** | FAIL |
<br>
</div>

<div id='produtos' />

## 📜 Resultados do endpoint /produtos

### ✔️ Cenários de teste **positivo**

<div align="center">
 
| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |
| ------ | ------ | :------ | :------ | :------: |
| Test Case 1: GET List All Products 200 | Validar o listamento de todos os produtos cadastrados | status code: 200 <br> Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/response_get_produtos.png" width=250> | status code: 200 <br> Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/response_get_produtos.png" width=250> | PASS |
| Test Case 2: Create Product And GET By ID 200 | Validar a criação um novo produto a partir de uma massa dinâmica e o buscar pelo ID gerado | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 <br> Exemplo de Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/response_product_tc2.png" width=3000> | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 <br> Exemplo de Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/response_product_tc2.png" width=3000> | PASS |
| Test Case 3: Dynamic Create And Remove Product 200 | Validar a criação um novo produto a partir de uma massa dinâmica e o deletar | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 | PASS |
| Test Case 4: PUT Edit Product 200 | Validar a criação um novo produto a partir de uma massa dinâmica e o editar com massa estática | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 <br> "message": "Registro alterado com sucesso" <br> Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/response_product_tc4.png" width=250> | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 <br> "message": "Registro alterado com sucesso" <br> Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/response_product_tc4.png" width=250> | PASS |
<br>
</div>

### ❌ Cenários de teste **negativo**

<div align="center">

| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |
| ------ | ------ | :------ | :------ | :------: |
| Test Case 1: POST Create Product Using Expired Authorization 401 | Validar o cadastro um produto a partir de um usuário com token expirado | status code: 401 <br> message: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais" | status code: 401 <br> message: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais" | PASS |
| Test Case 2: POST Create Product Using Unauthorized User 403 | Validar o cadastro e o login de um usuário sem autorização (administrador = false) e a partir desse usuário, validar o cadastro de um produto | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 403 <br> "message": "Rota exclusiva para administradores" | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 403 <br> "message": "Rota exclusiva para administradores" | PASS |
| Test Case 3: GET Product ID Does Not Exists 400 | Validar a busca de um produto que não existe mais pelo ID | status code: 400 <br> "message": "Produto não encontrado" | status code: 400 <br> "message": "Produto não encontrado" | PASS |
| Test Case 4: PUT Edit Product Same Name 400 | Validar o cadastro de um novo produto e editá-lo com o nome de um produto já cadastrado | status code: 400 <br> "message": "Já existe produto com esse nome" | status code: 400 <br> "message": "Já existe produto com esse nome" | PASS |
| Test Case 5: PUT Edit Product Without Authorization 403 | Validar o cadastro e o login de um usuário sem autorização (administrador = false) e a partir desse usuário, validar a edição de um produto | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 403 <br> "message": "Rota exclusiva para administradores" | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 403 <br> "message": "Rota exclusiva para administradores" | PASS |
| Test Case 6: PUT Edit Product With Expired Token 401 | Validar a edição de um produto a partir de um usuário com token expirado | status code: 401 <br> message: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais" | status code: 401 <br> message: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais" | PASS |
<br>
</div>

<div id='carrinhos' />

## 📜 Resultados do endpoint /carrinhos

### ✔️ Cenários de teste **positivo**

<div align="center">
 
| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |
| ------ | ------ | :------ | :------ | :------: |
| Test Case 1: GET List All Shopcarts 200 | Validar o listamento de todos os carrinhos cadastrados | status code: 200 <br> Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/get_carrinhos.png" width=600> | status code: 200 <br> Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/get_carrinhos.png" width=600> | PASS |
| Test Case 2: POST Create Shopcart And Complete Shop 200 | Validar o login de um usuário, cadastrar um carrinho e concluir a compra | status code: 200 <br> "message": "Login realizado com sucesso" <br><br> status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 | status code: 200 <br> "message": "Login realizado com sucesso" <br><br> status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 | PASS |
| Test Case 3: POST Create Shopcart And Cancel Shop 200 | Validar o login de um usuário, cadastrar um carrinho e cancelar a compra | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 <br> "message": "Registro excluído com sucesso" | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 <br> **"message": "Registro excluído com sucesso. Estoque dos produtos reabastecido"** | FAIL |
<br>
</div>

### ❌ Cenários de teste **negativo**

<div align="center">

| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |
| ------ | ------ | :------ | :------ | :------: |
| Test Case 1: POST Empty Shopcart 400 | Validar o login de um usuário e cadastrar um carrinho com produtos em branco | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> message: "Produto não encontrado" | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> **'produtos[0].idProduto': 'produtos[0].idProduto não pode ficar em branco', 'produtos[0].quantidade': 'produtos[0].quantidade deve ser um número', 'produtos': 'produtos não contém 1 valor obrigatório'** | FAIL |
| Test Case 2: POST Shopcart With Product Does Not Exists 400 | Validar o login de um usuário e cadastrar um produto que não existe no carrinho | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> message: "Produto não encontrado" | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> message: "Produto não encontrado" | PASS |
| Test Case 3: POST Shopcart With No Products 400 | Validar o login de um usuário e cadastrar um carrinho sem produtos | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> message: "Produto não encontrado" | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> **'produtos': 'produtos não contém 1 valor obrigatório'** | FAIL |
| Test Case 4: POST Shopcart With Zero Products 400 | Validar o login de um usuário e cadastrar no carrinho produtos com quantidade 0 | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> message: "Produto não encontrado" | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> **'produtos[0].quantidade': 'produtos[0].quantidade deve ser um número positivo', 'produtos': 'produtos não contém 1 valor obrigatório'** | FAIL |
| Test Case 5: POST Shopcart With Negative Quantity Products 400 | Validar o login de um usuário e cadastrar no carrinho produtos com quantidade negativa | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> message: "Produto não encontrado" | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> **'produtos[0].quantidade': 'produtos[0].quantidade deve ser um número positivo', 'produtos': 'produtos não contém 1 valor obrigatório'** | FAIL |
| Test Case 6: POST Shopcart With Decimal Quantity Products 400 | Validar o login de um usuário e cadastrar no carrinho produtos com quantidade decimal | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> message: "Produto não encontrado" | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> **'produtos[0].quantidade': 'produtos[0].quantidade deve ser um inteiro', 'produtos': 'produtos não contém 1 valor obrigatório'** | FAIL |
| Test Case 7: POST More Than One Shopcart 400 | Validar a criação e o login de um usuário e cadastrar mais de um carrinho | status code: 201 <br> message: "Cadastro realizado com sucesso" <br><br> status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> 'message': 'Não é permitido ter mais de 1 carrinho' | status code: 201 <br> message: "Cadastro realizado com sucesso" <br><br> status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> 'message': 'Não é permitido ter mais de 1 carrinho' | PASS |
| Test Case 8: POST Shopcart With Insufficient Quantity Of Products 400 | Validar o login de um usuário e cadastrar no carrinho produtos com quantidade maior do que no estoque | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> 'message': 'Produto não possui quantidade suficiente' | status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 400 <br> 'message': 'Produto não possui quantidade suficiente' | PASS |
| Test Case 9: POST Shopcart With Expired Token 401 | Validar o login de um usuário com token expirado e cadastrar um carrinho | status code: 401 <br> message: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais" | status code: 401 <br> message: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais" | PASS |
| Test Case 10: DELETE User And POST Shopcart 401 | Validar o cadastro de um carrinho em um usuário que não existe | status code: 201 <br> message: "Cadastro realizado com sucesso" <br><br> status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 200 <br><br> status code: 401 <br> message: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais" | status code: 201 <br> message: "Cadastro realizado com sucesso" <br><br> status code: 200 <br> message: "Login realizado com sucesso" <br><br> status code: 200 <br><br> status code: 401 <br> message: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais" | PASS |
<br>
</div>

<div id='usuarios' />

## 📜 Resultados do endpoint /usuarios

### ✔️ Cenários de teste **positivo**

<div align="center">
 
| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |
| ------ | ------ | :------ | :------ | :------: |
| Test Case 1: GET List All Users 200 | Validar o listamento de todos os usuários cadastrados | status code: 200 <br> Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/user_get_tc1.png"> | status code: 200 <br> Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/user_get_tc1.png"> | PASS |
| Test Case 2: GET User By ID 200 | Validar o registro de um novo usuário e o listar a partir de seu ID | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 <br> Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/user_get_tc2.png"> | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 <br> Response: <br><br> <img src="https://github.com/abressam/RoboTron_Amanda_Bressam_ProjetoFinal/blob/develop/assets/user_get_tc2.png"> | PASS |
| Test Case 3: GET Only Clients Users | Validar o listamento usuários sem autorização (administrador = false) | status code: 200 | status code: 200 | PASS |
| Test Case 4: PUT edit user by ID 200 | Validar o registro um novo usuário e o editar a partir de seu ID | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 <br> "message": "Registro alterado com sucesso" <br> Response: <br><br> COLOCAR IMAGEM | status code: 200 <br> Response: <br><br> COLOCAR IMAGEM | PASS |
| Test Case 5: DELETE Remove Dynamic User 200 | Validar a criação de um novo usuário e o remover em seguida | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 | status code: 201 <br> "message": "Cadastro realizado com sucesso" <br><br> status code: 200 | PASS |
| Test Case 6: DELETE Remove User Does Not Exists 200 | Validar a remoção de um usuário que não existe | status code: 200 <br> "message": "Nenhum registro excluído" | status code: 200 <br> "message": "Nenhum registro excluído" | PASS |

<br>
</div>

### ❌ Cenários de teste **negativo**

<div align="center">

| Cenário de Teste | Objetivo | Resultado Esperado | Resultado Obtido | Status |
| ------ | ------ | :------ | :------ | :------: |
| Test Case 1: POST User Already Exists 400 | Validar registro de um usuário com e-mail já cadastrado | status code: 400 <br> "message": "Este email já está sendo usado" | status code: 400 <br> "message": "Este email já está sendo usado" | PASS |
| Test Case 2: POST Create Empty User Email 400 | Validar registro de um usuário com o campo e-mail vazio | status code: 400 <br> "message": "Este email já está sendo usado" | status code: 400 <br> **"email": "email não pode ficar em branco"** | FAIL |
| Test Case 3: POST Create Empty User Password 400 | Validar registro de um usuário com o campo senha vazio | status code: 400 <br> "message": "Este email já está sendo usado" | status code: 400 <br> **"password": "password não pode ficar em branco"** | FAIL |
| Test Case 4: GET User Not Found By ID 400 | Validar a busca de um usuário por um ID que não existe | status code: 400 <br> "message": "Usuário não encontrado" | status code: 400 <br> "message": "Usuário não encontrado" | PASS |
<br>
</div>

<div align="center">
 <br>
<img src="https://c.tenor.com/TDaLQSXrXFAAAAAC/it-was-crazy-three-robots.gif" alt="First gif">
</div>

<div id='ferramentas' />

# ⚙️ Ferramentas Utilizadas

<p align="justify">
As ferramentas utilizadas no projeto estão descritas a seguir:
</p>

<div align="center">
  
| Ferramenta | Versão | Observações |
| ---------- | ------ | ----------- |
| Python | 3.8.2 | Linguagem de programação utilizada nos exercícios |
| VS Code | 1.68 | IDE usada para rodar o projeto |
| Git | 2.37.0 | Software de versionamento de código |
| GitHub | ------ | Plataforma online para alocar repositórios |
| Robot Framework | 5.0.1 | Ferramenta de automação de testes |
| Request Library | 0.9.3 | Biblioteca para testes de API usando Robot |
| Browser Library | 13.2.0 | Biblioteca que disponibiliza recursos do Browser para o Robot |
| Faker Library | 5.0.0 | Biblioteca com recursos para gerar massa de dados fictícia no Robot |
| Node.JS | 14.17.3 | Ambiente de execução JavaScript que auxilia a Browser Library |
<br>
</div>

<div id='referencias' />

# 🎆 Referências e agradecimentos

## 💻 Automação de Testes
* <a href="https://medium.com/rchlo-midway-tech/descomplicando-a-automatiza%C3%A7%C3%A3o-de-testes-com-robot-framework-af793f590ef1">Descomplicando a automatização de testes com Robot Framework - Medium - Michele Monteiro</a>
* <a href="https://blog.geekhunter.com.br/as-maiores-vantagens-de-testes-automatizados/#O_que_sao_testes_automatizados">As maiores vantagens de testes automatizados - GeekHunter - Richard Ferreira</a>

## 🐍 Biblioteca Python
* <a href="https://www.programiz.com/python-programming/methods/string/lower">Python String Methods - Programiz</a>
* <a href="https://towardsdatascience.com/faker-library-in-python-an-intriguing-expedient-for-data-scientists-7dd06f953050"> Faker Library in Python - Towards Data Science - Sanjay Nandakumar</a>
* <a href="https://www.geeksforgeeks.org/reading-and-writing-json-to-a-file-in-python/"> Reading and Writing JSON to a File in Python - GeeksforGeeks</a>

## 💖 Obrigada pela troca de conhecimentos
* <a href="https://github.com/BeatrizJardimm">Retorno do status code - Paula Beatriz Louback Jardim </a>
* <a href="https://github.com/neybackes">Sugestão de adaptação do Readme - Silvioney Backes Vogado </a>
* <a href="https://github.com/DemetrioWebber">Master Classes - Demétrio Webber </a>
* <a href="https://github.com/matheuslocatelli">Mentoria - Matheus Locatelli </a>

<div align="center">
 <br>
<img src="https://c.tenor.com/9StI7zvMcmsAAAAC/that-was-amazing-three-robots.gif" alt="First gif">
</div>
