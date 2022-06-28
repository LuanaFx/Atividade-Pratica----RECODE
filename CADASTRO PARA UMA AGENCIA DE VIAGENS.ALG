Algoritmo "Cadastro para uma agência de viagens"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Cadastro para uma agência de viagens
// Autor(a)    : LUANA BRITO FERNANDES
// Data atual  : 28/06/2022
Var
// Seção de Declarações das variáveis 
cadastro_cliente: vetor [1..100] de caracter
cadastro_destinos: vetor [1..100] de caracter
x,j,clientes,operacao,consulta_clientes,z,consulta_destinos,k:inteiro
resposta,destino,encerrar_operacao:caracter
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
x<-1
j<-1
consulta_clientes<-1
consulta_destinos<-1
repita
   escreval("Digite a opreação que deseja realizar:")
   escreval(" 1- cadastro de cliente| 2 - cadastro de destino")
   escreval(" 3- consulta de cliente| 4 - consulta de destino")
   leia(operacao)
   escolha (operacao)
   caso 1
        repita
             limpatela
             escreval("Digite o nome do cliente e o CPF separados por vígula")
             leia (cadastro_cliente[x])
             x<-x+1
             escreval("Deseja cadastrar outro cliente? responda com 's' ou 'n'")
             leia(resposta)
             consulta_clientes<-consulta_clientes+1
        ate resposta="n"

   caso 2
       repita
             limpatela
             escreval("Digite o destino a ser cadastrado")
             leia (cadastro_destinos[j])
             j<-j+1
             escreval("Deseja cadastrar outro destino? responda com 's' ou 'n'")
             leia(destino)
             consulta_destinos <-consulta_destinos+1
        ate destino="n"

   caso 3
        limpatela
        se consulta_clientes > 1 entao
           escreval("CLIENTES CADASTRADOS:")
           para z de 1 ate consulta_clientes faca
             escreval(cadastro_cliente[z],"")
           fimpara
        senao
             escreval("Nao existem clientes cadastrados no momento")
        fimse
   caso 4
      limpatela
      se consulta_destinos > 1 entao
           escreval("DESTINOS CADASTRADOS:")
           para k de 1 ate consulta_destinos faca
             escreval(cadastro_destinos[k],"")
           fimpara
        senao
             escreval("Nao existem destinos cadastrados no momento")
        fimse
   fimescolha
   escreval("Deseja encerrar operacao? responda com 's' ou 'n'")
   leia(encerrar_operacao)
ate encerrar_operacao="s"
fimalgoritmo