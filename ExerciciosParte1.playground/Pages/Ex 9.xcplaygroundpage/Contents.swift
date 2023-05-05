import UIKit

// Crie uma `class` chamada `Car` que tenha propriedades para `brand`, `model` e  `year`. Implemente um método que imprima o marca, o modelo e o ano do carro numa frase.

class Car{
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int){
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func printCarData(){
        print("Carro \(brand), modelo \(model), ano \(year).")
    }
}

var result = Car(brand: "Honda", model: "Fit", year: 2022)
result.printCarData()


