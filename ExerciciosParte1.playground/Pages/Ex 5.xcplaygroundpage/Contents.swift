import UIKit

// Escreva uma função que pega uma `string` e retorna `true` se a string for um palíndromo (ou seja, lê o mesmo para a frente e para trás), e `false` caso contrário.

func isPalindrome(word:String) -> Bool {
    
    //criar uma variável para guardar o valor da palavra invertida
    let reversedWord = String(word.reversed())
    
    //verificar se a palavra é igual a palavra invertida
    if word == reversedWord {
        return true
    } else {
        return false
    }
}

var palindrome = isPalindrome(word: "arara")
print("O resultado é \(palindrome)")

palindrome = isPalindrome(word: "banana")
print("O resultado é \(palindrome)")
