programa {
  funcao inicio() {
    inteiro menu
    real saldo = 0.0
    real saque
    real deposito
    cadeia extrato
    enquanto(menu != 0){
      escreva("|---------MENU---------|\n")
      escreva("| 1-> Saldo            |\n")
      escreva("| 2-> Saque            |\n")
      escreva("| 3-> Deposito         |\n")
      escreva("| 4-> Extrato          |\n")
      escreva("| 0 -> Sair            |\n")
      escreva("|----------------------|\n")
      escreva("| OPC�O: ")
      leia(menu)
      limpa(menu)
      escolha(menu){
        caso 1:
        escreva("Saldo = R$", saldo, "\n")
        pare

        caso 2:
        escreva("Digite o valor do saque: ")
        leia(saque)
        se(saldo < saque){
            escreva("N�o autorizado\n")
        }
        senao se (saque <= 0){
          escreva("Valor Invalido!\n")
        }
        senao{
          saldo = saldo - saque
          escreva("Saque realizado com sucesso!\n")
        }
        pare

        caso 3:
        escreva("Digite o valor do deposito: ")
        leia(deposito)
        se(deposito <= 0){
          escreva("Valor invalido!\n")
        }
        senao{
          saldo = saldo + deposito
          escreva("Deposito realizao com sucesso\n")
          extrato = extrato + "DEPOSITO-------R$" + deposito + "\n"
        }
        pare

        caso 4:
        escreva(extrato)
        pare

        
     }
}
}
}