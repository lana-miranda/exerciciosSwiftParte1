import UIKit

// Crie uma `struct` chamada `Rectangle` que tenha duas propriedades: `witdh` e `height` . Implemente um método que calcule a área do retângulo.

struct Rectangle{
    var witdh: Double
    var height: Double
    
    //inicializando as propriedades
    init(witdh: Double, height: Double){
        self.witdh =  witdh
        self.height =  height
    }
    
    //método para calcular a área
    func area() -> Double {
        let area = witdh * height
        return area
    }
}

var calculatedArea = Rectangle(witdh: 10.20, height: 5.20)
print(calculatedArea.area())
