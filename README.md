# Projeto de Aprendizado de Assembly  #

Este repositório é focado no aprendizado de Assembly, contendo exemplos de código e um Makefile para compilar os arquivos.

## Observação importante ##
Este projeto foi desenvolvido e testado em um ambiente Linux, especificamente na distribuição Pop!_OS, baseada em Debian. Não há garantias de que o projeto funcione corretamente em outros sistemas operacionais.

## Como Usar ##

### Pré-Requisitos ###

Antes de começar, certifique-se de ter o NASM instalado. Caso não tenha, execute os seguintes comandos no terminal:

```bash

    sudo apt-get update
    sudo apt-get install nasm

```

### Compilando o Código ###

Para compilar um arquivo, coloque o nome do mesmo no campo "PROGRAM_NAME" do arquivo Makefile. Depois, execute o seguinte comando no terminal:

```bash

    make PROGRAM_NAME

```

Esse comando irá gerar dois arquivos: PROGRAM_NAME.o e PROGRAM_NAME. Para rodar o código, execute o seguinte comando no terminal:
```bash
    ./PROGRAM_NAME
```

### Licença ###

Este projeto é distribuído sob a licença MIT. Veja o arquivo LICENSE para mais informações.

### Créditos ###

[Professor Fernando Anselmo](https://www.youtube.com/@FernandoAnselmo)
[Repositorio com seu livro](https://github.com/fernandoans/publicacoes)