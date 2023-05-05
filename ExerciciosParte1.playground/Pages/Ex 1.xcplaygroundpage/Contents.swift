import UIKit

//1 - Escreva uma função que pega um `array` de números inteiros e devolve a soma de todos os números pares do conjunto.
//material de apoio https://www.programiz.com/swift-programming/arrays

func addEvenNumbers (numbers:[Int]) -> Int {
    //criar uma váriavel que vai guardar a soma dos números pares, nesse caso vamos incializar ela com o valor 0
    var addEven = 0
    
    // utilizar o for para percorrer o array, usando uma condicional pra verificar se o número é par e caso sim vamos somando os valores na váriavel que criamos addEven
    for number in numbers {
        if number % 2 == 0 {
            addEven += number
        }
    }
    
    return addEven
}


let numbers = [1, 2, 5, 6, 7, 10]
print(addEvenNumbers(numbers: numbers))
