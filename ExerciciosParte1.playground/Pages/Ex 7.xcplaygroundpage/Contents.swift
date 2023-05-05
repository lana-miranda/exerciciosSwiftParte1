import UIKit

// Escreva uma função que recolhe um `array` de números inteiros e devolve o segundo maior número do conjunto.

// Existem várias soluções, esse exercício foi um desafio pra mim, mas depois de pesquisar bastante encontrei uma solução

func secondLargestNumber(numbers: [Int]) -> Int? {
    
    //primeiro passo é verificar se existe mais de um número no array, para esse caso precisamos utilizar optionals com o guard let e a função nativa count que serve para contar a quantidade de itens no array
    guard numbers.count >= 2 else {
        return nil
    }
    
    // O segundo passo é inicializar duas váriaveis para com os dois números maiores encontrados
    var firstLargest = numbers[0]
    var secondLargest = numbers[1]
    
    // O terceiro passo é percorrer o array a partir do terceiro item, por isso colocamos o número 2 em conjunto com o  o half-open range operator. uma vez que o número final do intervalo não está incluído no intervalo.
    for index in 2..<numbers.count {
        let number = numbers[index]
        
        if number > firstLargest {
            // Se o número for maior do que o maior número até agora e atualiza os valores
            secondLargest = firstLargest
            firstLargest = number
            
        } else if number > secondLargest {
            // Se o número for menor do que o maior número, mas maior do que o segundo maior número até agora, atualiza o valor de secondLargest
            secondLargest = number
        }
    }
    
    return secondLargest
}


var result = secondLargestNumber(numbers: [1, 2, 3, 4, 5])
print("O segundo maior número é \(String(describing: result))")


