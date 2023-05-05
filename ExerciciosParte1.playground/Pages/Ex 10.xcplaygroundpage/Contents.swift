import UIKit

// Criar uma `struct` chamada `Point` que tenha propriedades para as coordenadas `x` e `y`. Implemente um método que calcule a distância entre dois pontos.
//fontes de ajuda para resolução:
//https://developer.apple.com/documentation/swift/1541125-sqrt
//https://pt.khanacademy.org/math/geometry-home/analytic-geometry-topic/distance-and-midpoints/v/distance-formula
//https://pt.stackoverflow.com/questions/415543/fun%C3%A7%C3%A3o-para-calcular-a-dist%C3%A2ncia-entre-dois-pontos
//https://www.hackingwithswift.com/example-code/core-graphics/how-to-calculate-the-distance-between-two-cgpoints


struct Point {
    var point1: Double
    var point2: Double
    
    func distance(otherPoint: Point) -> Double {
        let distancePoint1 = otherPoint.point1 - point1
        let distancePoint2 = otherPoint.point2 - point2
        
        //usamos a fórmula matemática para a distância entre dois pontos em um plano cartesiano, nativa swift
        return sqrt(distancePoint1 * distancePoint1 + distancePoint2 * distancePoint2)
    }
}

// Cria dois pontos
let ponto1 = Point(point1: 0, point2: 0)
let ponto2 = Point(point1: 3, point2: 4)

// Calcula a distância entre os pontos usando o método distancia(to:)
let distancia = ponto1.distance(otherPoint: ponto2)

// Imprime o resultado
print("A distância entre os pontos é: \(distancia)")
