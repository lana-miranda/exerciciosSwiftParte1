import UIKit

// Escreva uma função que pega um `array` de `strings` e devolve um novo conjunto com todas as `strings` em ordem inversa.

//praticamente a mesma solução do exercício 5
func reverseStringsSet(strings: [String]) -> Set<String> {
    var result = Set<String>()
    
    for string in strings {
        let invertedString = String(string.reversed())
        result.insert(invertedString)
    }
    return result
}

let strings1 = ["pikachu", "charmander", "bulbasaur"]
let result = reverseStringsSet(strings: strings1)
print(result)
