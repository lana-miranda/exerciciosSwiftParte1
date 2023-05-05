import UIKit

// Crie uma classe chamada `BankAccount` que tenha propriedades para `accountNumber` , `balance`, e `accountHolderName`. Implemente dois métodos, um para depósitar um valor em conta, e outra para sacar.

class BankAccount {
    var accountNumber: Int
    var balance: Double
    var accountHolderName: String
    
    init(accountNumber: Int, balance: Double, accountHolderName: String){
        self.accountNumber = accountNumber
        self.balance = balance
        self.accountHolderName = accountHolderName
    }
    
    //cria função de depósito: só somar o valor de entrada com o saldo
    func deposit(value:Double){
        balance += value
        print("O saldo atualizado é \(balance)")
    }
    
    //cria uma função de saque: primeiro faz uma condicional para verificar se tem saldo na conta, se sim realiza o saque se não ele dispara uma mensagem de saldo isuficiente
    func withdraw(value: Double){
        if value <= balance {
            balance -= value
            print("O saldo atualizado é \(balance)")
        }else{
            print("Saldo insuficiente para saque")
        }
    }
}

var movimentation = BankAccount(accountNumber: 1234, balance: 150.50, accountHolderName: "Lana")
movimentation.deposit(value: 50.50)
movimentation.withdraw(value: 30.20)
movimentation.withdraw(value: 300.50)


