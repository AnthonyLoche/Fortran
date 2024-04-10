# Fortran

Estudos Feitos Baseados no Curso Presente no Link Abaixo:
[Curso](https://www.youtube.com/playlist?list=PLucm8g_ezqNpyGISxhMLrPaSM-OoDrFn0)

## Como Instalar o Fortran no Linux (Ubuntu, Debian, Mint, etc)

[Site Oficial do Fortran](https://fortran-lang.org/)

>Para podermos iniciarmos a instalação é interessante atualizarmos pacotes, programas, bibliotecas e etc do sistema. Para isso, execute o seguinte comando no terminal (é possivel ser feito utilizando WSL no Windows):

```
sudo apt update
```

Caso o terminal pergunte se voce deseja continuar, digite "Y, ou S" e pressione "Enter".

>Para instalar o compilador gfortran no Linux, basta executar o seguinte comando no terminal:

```
sudo apt install gfortran
```

Assim, terminando, ja temos o compilador de Fortran instalado em nosso sistema.

<hr>

## Criando um Hello World em Fortran

Para criar um programa em Fortran, basta criar um arquivo com a extensão ".f95" e adicionar o seguinte código:

Por exemplo, crie um arquivo chamado "HelloWorld.f95" e adicione o seguinte código (f95 está relacionado a versão do Fortran):

Aqui no repositorio, temos um arquivo chamado "HelloWorld.f95" que contem o seguinte código:

```
PROGRAM helloworld;

    IMPLICIT NONE 

    CHARACTER(LEN=11) :: mensagem

    mensagem = 'Hello World'
    WRITE(*,*) mensagem

END PROGRAM helloworld
```

Que é um codigo simples que imprime "Hello World" na tela.

Na primeira linha:

<b>"PROGRAM helloworld"</b>, criamos o programa e atribuimos o nome de "helloworld" a ele. TODO programa em fortran necessita de um programa principal, e ele é definido por "PROGRAM nome_do_programa".

Na segunda linha:

<b>"IMPLICIT NONE"</b>, desabilitamos a declaração implicita de variaveis. Isso significa que todas as variaveis que forem utilizadas no programa precisam ser declaradas explicitamente.

Na terceira linha:

<b>"CHARACTER(LEN=11) :: mensagem"</b>, declaramos uma variavel do tipo caracter chamada "mensagem" com tamanho 11, não se preocupe com o tipo da variavel, mais tarde entenderemos os tipos de variaveis e como são declaradas.

Na quarta linha:

<b>"mensagem = 'Hello World'"</b>, atribuimos a variavel "mensagem" o valor "Hello World".

Na quinta linha:

<b>"WRITE(*,*) mensagem"</b>, escrevemos na tela o valor da variavel "mensagem".

Na sexta linha:

<b>"END PROGRAM helloworld"</b>, finalizamos o programa, assim como iniciamos todo programa, temos que finalizalo, entao "PROGRAM name" e "END PROGRAM name" é algo necessário em todo programa Fortran.


## Como Compilar e Executar um Programa em Fortran

>Para compilar um programa em Fortran, basta executar o seguinte comando no terminal:

```
gfortran -o nome_do_programa nome_do_programa.f95
```
O que é cada coisa?

1. <b>"gfortran -o"</b>, é o comando para compilar o programa

2. <b>"nome_do_programa"</b> é o nome que voce deseja dar a um programa executavel que será criado 

3. <b>"nome_do_programa.f95"</b> é o nome do arquivo que contem o código fonte do programa.

<hr>

## Compilando Um programa

Acredito que você tenha criado o arquivo <b>HelloWorld.f95</b> e tenha colocado o código acima nele.

Após isso, abra o terminal e vá até a pasta onde o arquivo está localizado utilizando o comando "cd".

Após isso, execute o seguinte comando:

```
gfortran -o HelloWorld HelloWorld.f95
```

Se tudo ocorrer bem, um arquivo executavel chamado "HelloWorld" será criado na pasta onde o arquivo "HelloWorld.f95" está localizado.

E por fim, se você deseja executar o programa, basta executar o seguinte comando:

```
./HelloWorld
```

Lembrando que HelloWold é o nome do arquivo executavel que foi criado.

O exemplo do HelloWorld é simples, mas podemos utilizar a estrutura para varios outros programas
