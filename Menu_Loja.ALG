Algoritmo "semnome"
// Disciplina   : T�cnicas de Programa��o e Algoritmos
// Professor   : Tiago Antonio da Silva
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/06/2021
Var
// Se��o de Declara��es das vari�veis
opcao,resp:caracter

nome:caractere

Prod: vetor[1..99] de caractere
Valor: vetor[1..99] de real
Quant: vetor[1..99] de inteiro
i,list:inteiro
acumulador,custo,saldo,receita:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

acumulador <- 0
i<-0
Escreval("Bem-vindo ao Sistema de Loja")
Repita



     Se(nome = "") Ent�o
         Escreval("Informe seu nome")
         Leia(nome)
     Fimse
     Escreval("")
     Se(i>=1)ent�o
     Escreval("========================")
     Escreval("| X - Total de compras |")
     fimse
     Escreval("|----------------------|")
     Escreval("| Y - Inserir Item     |")
     Escreval("|----------------------|")
     Escreval("| Z - Sair do Sistema  |")
     Escreval("|----------------------|")
     Escreval("| S - Receita di�ria   |")
     Escreval("========================")
     Leia(opcao)

     //As estruturas de decis�o bugaram e apenas dessa forma est� funcionando
     //qualquer outro tipo acba dando erro, e j� tentei modificar o c�digo v�rias
     //vezes
      Se(opcao="x") ent�o
        opcao<-"X"
      fimse
      Se(opcao="y") ent�o
        opcao<-"Y"
      fimse
      Se(opcao="z") ent�o
        opcao<-"Z"
      fimse
      Se(opcao="s") ent�o
        opcao<-"S"
      fimse

    
    //Come�a a venda

     Escolha opcao
         Caso "X"
         Se(i=0)Ent�o
         Escreval("Nennhum item registrado")
         Fimse
         
              para list de 1 at� i fa�a
              Escreval("")
                  Escreval("n�",list," - ",Prod[list])
                  Escreval("Valor - ",Valor [list]*Quant[list])
                  Escreval("(Valor unit�rio: R$",Valor [list],")")
                  custo <- custo+(Valor[list]*Quant[list])
              fimpara
              Se(i>=1)Ent�o
              Escreval("===================")
              Escreval("Total de custo: R%",custo)
              Escreval("Dinheirto fornecido:")
              Leia(saldo)

              se(saldo >= custo) ent�o
              Escreval("Pago com sucesso")
              Escreval("Troco:", (custo-saldo)*(-1))
              sen�o
              Escreval("N�o atingiu o total")
              Escreval("D�vida:", custo-saldo)
              fimse
              fimse
              Escreval("")
              Escreval("\\\\\\\\\\\\\\\\\\\\\\\\\\")
              Escreval("")
              i<-0
              receita<-receita+saldo
              custo<-0
              nome<-""

         Caso "Y"
         resp<-""
         repita
         i<-i+1
              Escreval("Vai registrar um produto")
              Escreval("----------------")
              Escreval("Digite o nome do produto")
              leia(Prod[i])
              Escreval("Digite o pre�o do produto")
              leia(Valor[i])
              Escreval("Digite a quantidade do produto")
              leia(Quant[i])
              Escreval("")
              Escreval("Restam: ",99-i," cadastros de produtos")
              Escreval("----------------")
              Escreval("Deseja registrar mais alguma roupa? S-(Sim) N-(N�o)")
              leia(resp)
              
              se(resp = "N") ou (resp="n")ent�o
              resp<-"falso"
              fimse
              
         at� resp = "falso"
         Caso "S"
         Escreval("")
         Escreval("=========================================")
         Escreval("Seus ganhos atuais foram de: R$",receita)
         Escreval("=========================================")
         Caso "Z"
              Escreval("At� logo, ", nome)

         Outrocaso
              Escreval("Op��o Inv�lida. Digite a opcao certa ", nome)
     Fimescolha



At� (opcao = "Z")



Fimalgoritmo