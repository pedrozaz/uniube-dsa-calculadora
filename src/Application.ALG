Algoritmo "Calculadora"
// Disciplina  :  DSA
// Professor   :  Maxwell e Felix
// Descri��o   : Calculadora funcional de: soma, multi, div, sqrt, sub e poten.
// Data atual  : 6/7/2025


// PROCEDIMENTOS

procedimento ExibirMenu()
inicio
    escreval("")
    escreval("   --------CALCULADORA--------")
    escreval("   1. Soma")
    escreval("   2. Subtra��o")
    escreval("   3. Multiplica��o")
    escreval("   4. Divis�o")
    escreval("   5. Radicia��o")
    escreval("   6. Potencia��o")
    escreval("   7. Sair")
    escreval("   ---------------------------")
    escreval("")
    escreva("Selecione uma opera��o: ")
fimprocedimento

procedimento ExibirResultado(resultado : real; operacao : caractere)
inicio
    escreval("Resultado da ", operacao, " :", resultado)
fimprocedimento

procedimento LerNumeros(menuSelect : inteiro)
inicio
    se menuSelect = 5 entao
        escreva("-> ")
        leia(numeroRad)
    senao
        escreva("-> ")
        leia(numeroUm)
        escreva("-> ")
        leia(numeroDois)
    fimse
fimprocedimento
    
procedimento Erro()
inicio
    escreval("Erro: opera��o inv�lida!")
fimprocedimento


//FUNC�ES

funcao Somar(numeroUm, numeroDois : real): real
inicio
    retorne numeroUm + numeroDois
fimfuncao

funcao Subtrair(numeroUm, numeroDois : real): real
inicio
    retorne numeroUm - numeroDois
fimfuncao

funcao Multiplicar(numeroUm, numeroDois : real): real
inicio
    retorne numeroUm * numeroDois
fimfuncao

funcao Dividir(numeroUm, numeroDois : real): real
inicio
    se numeroDois <> 0 entao
        retorne numeroUm / numeroDois
    senao
        retorne 0
    fimse
fimfuncao

funcao Radiciar(numero : real): real
inicio
    se numero >= 0 entao
        retorne numero ^ 0.5
    senao
        retorne 0
    fimse
fimfuncao

funcao Potenciar(base, expoente : real): real
inicio
    retorne base ^ expoente
fimfuncao


// SCRIPT PRINCIPAL

Var

numeroUm, numeroDois, numeroRad, resultado : real
menuSelect : inteiro
operacao : caractere

Inicio

enquanto menuSelect <> 7 faca
    ExibirMenu()
    leia(menuSelect)

    se (menuSelect > 0) e (menuSelect <= 6) entao
    
        LerNumeros(menuSelect)
    
        escolha menuSelect
            caso 1
                resultado <- Somar(numeroUm, numeroDois)
                operacao <- "soma"
                ExibirResultado(resultado, operacao)
            caso 2
                resultado <- Subtrair(numeroUm, numeroDois)
                operacao <- "subtra��o"
                ExibirResultado(resultado, operacao)
            caso 3
                resultado <- Multiplicar(numeroUm, numeroDois)
                operacao <- "multiplica��o"
                ExibirResultado(resultado, operacao)
            caso 4
                 resultado <- Dividir(numeroUm, numeroDois)
                 operacao <- "divis�o"
                 se resultado <> 0 entao
                     ExibirResultado(resultado, operacao)
                 senao
                     Erro()
                 fimse
            caso 5
                 resultado <- Radiciar(numeroRad)
                 operacao <- "radicia��o"
                 se resultado <> 0 entao
                     ExibirResultado(resultado, operacao)
                 senao
                     Erro()
                 fimse
            caso 6
                 resultado <- Potenciar(numeroUm, numeroDois)
                 operacao <- "potencia��o"
                 ExibirResultado(resultado, operacao)
        fimescolha
        
    senao
        se menuSelect <> 7 entao
            Erro()
        fimse
    fimse
fimenquanto

Fimalgoritmo