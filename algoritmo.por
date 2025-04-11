programa {
  funcao inicio() {
    inteiro op
    real num1, num2, resto

    // loop principal do menu
    enquanto (verdadeiro) {
      escreva("-----Menu Calculadora-----\n")
      escreva("1 - Soma\n")
      escreva("2 - Subtração\n")
      escreva("3 - Multiplicação\n")
      escreva("4 - Divisão\n")
      escreva("5 - Divisão (Visualizar o resto)\n")
      escreva("0 - Sair\n")

      escreva("Escolha uma opção: ")
      leia(op)

      se (op == 0) {
        escreva("Saindo do programa...\n")
        pare
      }

      se (op >= 1 e op <= 5) {
        escreva("\n--- Informe dois números ---\n")
        escreva("Primeiro numero: ")
        leia(num1)
        escreva("Segundo número: ")
        leia(num2)

        escolha(op){
          caso 1: 
            escreva(num1, " + ", num2, " = ", num1 + num2, "\n") // Soma
            pare

          caso 2: 
            escreva(num1, " - ", num2, " = ", num1 - num2, "\n") // Subtração
            pare

          caso 3:
            escreva(num1, " * ", num2, " = ", num1 * num2, "\n" ) // Multiplicação
            pare

          caso 4: 
            se (num2 != 0) {
              escreva(num1, " / ", num2, " = ", num1 / num2, "\n") // Divisão normal
            } senao {
              escreva("Erro! Divisão por zero não permitida.\n")
            }
            pare

          caso 5: // Divisão apresentando o resto
            se (num2 != 0) {
              resto = num1 % num2
              escreva(num1, " / ", num2, " = ", num1 / num2)
              escreva("\nO resto é ", resto, "\n")
            } senao {
              escreva("Erro! Divisão por zero não permitida.\n")
            }
            pare

          caso contrario:
            escreva("Erro! Informe um valor presente no menu.\n")
        }
      } senao {
        escreva("Operação invalida!\n")
      }

      escreva("\n")
    }
  }
}
