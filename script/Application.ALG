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
    escreva("-> ")
fimprocedimento

procedimento ExibirResultado(resultado : real; operacao : caractere)
inicio
    escreval("Resultado da ", operacao, " :", resultado)
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

    
    ExibirResultado(resultado, operacao)
fimenquanto

Fimalgoritmo