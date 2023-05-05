import UIKit

//Crie uma classe chamada `Person` que tenha propriedades para `name`, `age` e `occupation`. Implemente um método que imprima o nome e a idade da pessoa numa frase.
//Documentação de ajuda para esse exercício https://www.programiz.com/swift-programming/classes-objects

class Person {
    var name: String
    var age: Int
    var occupation: String
    
    //inicializando as propriedades da classe
    init (name: String, age: Int, occupation: String){
        self.name = name
        self.age = age
        self.occupation = occupation
    }
    
    //método para imprimir a frase
    func personalData(){
        print("O meu nome é \(name) tenho \(age) anos e sou \(occupation).")
    }
}

let person = Person(name:"Lana", age:34, occupation:"Desenvolvedora")
person.personalData()



