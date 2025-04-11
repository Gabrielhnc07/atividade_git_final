programa {
  funcao inicio() {
    inteiro op, num1, num2
    escreva("------Menu-------\n")
    escreva("1 - Soma\n")
    escreva("2 - Subtração\n")
    escreva("3 - Multiplicação\n")
    escreva("4 - Divisão\n")
    leia(op)
    
    escreva("Informe dois números: ")
    leia(num1)
    leia(num2)

    escolha(op){
      caso 1: escreva(num1, " + ", num2, " = ", num1 + num2)
      caso 2: escreva(num1, " - ", num2, " = ", num1 - num2)
    }

  }
}
