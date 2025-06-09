Algoritmo "Calculadora"
// Disciplina  :  DSA
// Professor   :  Maxwell e Luis Carlos
// Descrição   : Calculadora funcional de: soma, multi, div, sqrt, sub.
// Autores    : Guilherme Pedroza, Lucas Nastalli, Rhandal, Nikolas, Iris
// Data atual  : 6/7/2025


procedimento ExibirMenu()
inicio
    escreval("")
    escreval("   --------CALCULADORA--------")
    escreval("   1. Soma")
    escreval("   2. Subtração")
    escreval("   3. Multiplicação")
    escreval("   4. Divisão")
    escreval("   5. Radiciação")
    escreval("   6. Potenciação")
    escreval("   7. Sair")
    escreval("   ---------------------------")
    escreval("")
    escreva("Selecione uma operação: ")
fimprocedimento

procedimento ExibirResultado(resultado : real; operacao : caractere)
inicio
    escreval("Resultado da ", operacao, " :", resultado)
fimprocedimento

procedimento Erro()
inicio
    escreval("Erro: operação inválida!")
fimprocedimento

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

Var

numeroUm, numeroDois, numeroRad, resultado : real
menuSelect : inteiro
operacao : caractere

Inicio

enquanto menuSelect <> 7 faca
    ExibirMenu()
    leia(menuSelect)

    se (menuSelect >= 1) e (menuSelect <= 6) entao
        se menuSelect = 5 entao
            escreva("-> ")
            leia(numeroRad)
        senao
            escreva("-> ")
            leia(numeroUm)
            escreva("-> ")
            leia(numeroDois)
        fimse
    
        escolha menuSelect
            caso 1
                resultado <- Somar(numeroUm, numeroDois)
                operacao <- "soma"
                ExibirResultado(resultado, operacao)
            caso 2
                resultado <- Subtrair(numeroUm, numeroDois)
                operacao <- "subtração"
                ExibirResultado(resultado, operacao)
            caso 3
                resultado <- Multiplicar(numeroUm, numeroDois)
                operacao <- "multiplicação"
                ExibirResultado(resultado, operacao)
            caso 4
                 resultado <- Dividir(numeroUm, numeroDois)
                 operacao <- "divisão"
                 se resultado <> 0 entao
                     ExibirResultado(resultado, operacao)
                 senao
                     Erro()
                 fimse
            caso 5
                 resultado <- Radiciar(numeroRad)
                 operacao <- "radiciação"
                 se resultado <> 0 entao
                     ExibirResultado(resultado, operacao)
                 senao
                     Erro()
                 fimse
            caso 6
                 resultado <- Potenciar(numeroUm, numeroDois)
                 operacao <- "potenciação"
                 ExibirResultado(resultado, operacao)
        fimescolha
        
        senao
            se menuSelect <> 7 entao
                Erro()
            fimse
    fimse
fimenquanto

Fimalgoritmo