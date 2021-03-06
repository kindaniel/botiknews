
Meu perfil no linkedin: 
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/daniel-kin-ivatiuk/)](https://www.linkedin.com/in/daniel-kin-ivatiuk/)

# BotikNews

## Descrição do Projeto
<p align="center">Nesse app, o colaborador pode criar posts e também poderá ver as postagens de seus colegas na página
inicial, em ordem cronológica. O colaborador também tem acesso as ultimas novidades da API.</p>


<h1 align="center">
    <a href="https://flutter.dev/">🔗 Flutter</a>
</h1>
<p align="center">🚀 
Flutter é o kit de ferramentas de IU do Google para a construção de aplicativos bonitos e compilados de forma nativa para celular, web e desktop a partir de uma única base de código.</p>


### Features

- [x] Testes de integração, unitários e de widgets;
- [x] Cadastro;
- [x] Login;
- [x] Crud de posts;
- [x] Lista de novidades vindo da API;
- [x] Autorização apenas para o dono do post poder editar/remover;


## Outras informações
<p align="center">

- [x] Utilizado SQFlite para armazenamento local e Dio para recuperar dados da API;
- [x] Gerenciamento de estado sob responsabilidade do Bloc utilizando o package Provider com ChangeNotifier;
- [x] Utilizado principios de Clean architecture;


### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
[Git](https://git-scm.com), [Flutter](https://flutter.dev). 
Além disto é bom ter um editor para trabalhar/visualizar o código, como [VSCode](https://code.visualstudio.com/)

### 🎲 Rodando teste de integração

```bash 

# Clone este repositório
$ git clone <https://github.com/kindaniel/botiknews>

# Acesse a pasta do projeto no terminal/cmd
$ cd botiknews

# Instale as dependências
$ flutter pub get

# configure o usuário e senha do app em test/integration/app_test.dart
$ cd test

# acesse a pasta de testes
$ cd test

# execute o script criado que já faz o run do teste
$ ./execute_integration.sh

# se preferir, também pode rodar o comando: flutter drive --driver=test/test_driver/integration_test_driver.dart --target=test/integration/app_test.dart
# porém o script ja deixa isso pronto!

```
### 🎲 Rodando o APP

```bash

# Você pode rodar o apk que está na raiz desse projeto
$ cd botiknews

# Em um celular android: Abra o arquivo version-to-test.apk

# Caso seja necessário, você deverá dar permissões para instalar aplicativos de fontes desconhecidas. 

## OU

# Clone este repositório
$ git clone <https://github.com/kindaniel/botiknews>

# Acesse a pasta do projeto no terminal/cmd
$ cd botiknews

# Instale as dependências
$ flutter pub get

# Execute a aplicação em modo de desenvolvimento
$ flutter run

# Você pode rodar o app diretamente no seu celular caso ele seja um Android. 
# Mas também pode usar um emulador para isso.

```
