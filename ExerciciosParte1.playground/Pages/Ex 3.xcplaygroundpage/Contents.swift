import UIKit

//Escreva uma função que aceita dois `arrays` de números inteiros e devolve um novo `array` que contém apenas os elementos que são comuns em ambos os conjuntos.
//exemplos e ajuda com o exercício no site https://www.programiz.com/swift-programming/sets

func setCommonNumbers (array1:[Int], array2:[Int]) -> [Int] {
    var commonNumbers = Set<Int>()
    
    //utilizar o for para percorrer o array1 com uma condicional que olhe no array2 se cada um dos números está contido nele, se sim adicionar o número ná variavel commonNumbers
    for number in array1{
        if array2.contains(number){
            commonNumbers.insert(number)
        }
    }
    return Array(commonNumbers) // nesse caso temos que transformar a collection commonNumbers em array, pq ela era um set :)
}

var commonsSet = setCommonNumbers(array1: [1, 7, 8, 9], array2: [1, 2, 4, 7])
print("Esses são os números comuns \(commonsSet)")







//se a ordem de saída dos números importa é interessante modificar a função para o seguinte exemplo https://www.programiz.com/swift-programming/arrays

func arrayCommonNumbers (array1:[Int], array2:[Int]) -> [Int] {
    var commonNumbers = [Int]()
    
    //utilizar o for para percorrer o array1 com uma condicional que olhe no array2 se cada um dos números está contido nele, se sim adicionar o número ná variavel commonNumbers
    for number in array1{
        if array2.contains(number){
            commonNumbers.append(number)
        }
    }
    return Array(commonNumbers) // nesse caso temos que transformar a collection commonNumbers em array, pq ela era um set :)
}

var commonsArray = arrayCommonNumbers(array1: [1, 7, 8, 9], array2: [1, 2, 4, 7])
print("Esses são os números comuns \(commonsArray)")



