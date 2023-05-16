section .data ;secao memoria antes do programa executar HEAP
    msg db 'Hello World!', 0xA; msg virara um ponteiro na memoria de db | db tipo de dado, define byte
    tam equ $- msg ;tam variavel tamanho| equ equal  | $- operador comprimento em bytes do valor alocado na memoria do endereco citado
section .text; pilha de funcoes executadas

;ponto de entrada
global _start;global chama a funcao inicial

_start:
    mov eax, 0x4;mov minemonico=endereco que leva para um registrador | eax armazena um valor de cada vez| acumulador register | 0x4 standard transfer data kernel:diretamente ligado com S.O|meio q um import do sistema de transferencia de dados
    mov ebx, 0x1;base    register = meio que uma funcao do sistema de transferencia de dados que seria o print
    mov ecx, msg;counter register = definindo o output
    mov edx, tam;data    register 

    int 0x80 ; executa tudo atrás | chamada da kernel para executar codigo acima tambem funciona o "syscall"
    
    mov eax, 0x1 ; lib para finalizar program
    mov ebx, 0x0; registrador dentro da lib acima para finalizar programa com sucesso
    int 0x80 ; executa tudo atrás



; Esse código em Assembly tem como objetivo exibir a mensagem "Hello World!" na tela. O código começa definindo duas seções, a seção .data, que é usada para definir dados, e a seção .text, que é usada para definir o código executável. Na seção .data, há duas linhas. A primeira define uma variável chamada "msg" que contém a string "Hello World!" seguida por um caractere de nova linha (0xA) que será exibido na tela. A segunda linha usa a diretiva "equ" para definir a variável "tam" como o tamanho da mensagem "msg". Na seção .text, há um rótulo global chamado "_start", que é o ponto de entrada do programa. A primeira instrução mov coloca o valor hexadecimal 4 no registrador eax, que é usado para representar a chamada do sistema write. A próxima instrução mov coloca o valor 1 no registrador ebx, que representa o arquivo de saída padrão (stdout). A instrução mov seguinte coloca o endereço da variável "msg" no registrador ecx, que é o ponteiro para a string a ser exibida. A instrução mov final coloca o tamanho da string, que foi previamente armazenada em "tam", no registrador edx. A instrução int 0x80 é uma interrupção do sistema, que irá chamar a função write com os parâmetros definidos anteriormente, exibindo a mensagem na tela. Depois de exibir a mensagem, o código mov coloca o valor hexadecimal 1 no registrador eax, que representa a chamada do sistema exit. A próxima instrução mov coloca o valor 0 no registrador ebx, que é o código de saída do programa. A última instrução int 0x80 é outra interrupção do sistema que irá chamar a função exit com o valor de saída definido anteriormente, terminando o programa. Em resumo, esse código escreve "Hello World!" na tela e sai do programa com o código de saída 0.