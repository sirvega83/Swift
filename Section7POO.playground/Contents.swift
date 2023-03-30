import UIKit

//POO

//struct -> value type:copia
struct cuadrados {
    var ancho = 10 //propiedades
    var alto = 10
    
    func area() -> Int { //metodos
        return ancho * alto
    }
}

var miCuadrado = cuadrados()
miCuadrado.ancho = 100
miCuadrado.alto = 100
print("Ancho del cuadrado: \(miCuadrado.ancho))")
print("Alto del cuadrado: \(miCuadrado.alto))")
print("El area del cuadrado es: \(miCuadrado.area())")
var miCuadrado2 = miCuadrado
miCuadrado2.alto = 5
miCuadrado2.ancho = 5
print("Ancho del cuadrado: \(miCuadrado2.ancho))")
print("Alto del cuadrado: \(miCuadrado2.alto))")
print("El area del cuadrado es: \(miCuadrado2.area())")

//class -> reference type:referencia, puede heredar de clase pladre
class automovil {
    var color = "Blanco"
    var tipo = "suv"
    var combustible = "gasolina"
    var cambio = "manual"
    
    func encendido() -> Bool {
        return true
    }
    func apagado() -> Bool {
        return true
    }
    func acelerar() -> String {
        return "de 0 a 100 en 8,5 seg"
    }
}
var miSeatAteca = automovil()
miSeatAteca.color = "gris camuflaje"
miSeatAteca.cambio = "Automático"

var miSeatLeon = miSeatAteca
miSeatLeon.color = "rojo"
print("Mi coche, Seat Ateca es tipo \(miSeatAteca.tipo), es de color \(miSeatAteca.color) y acelera \(miSeatAteca.acelerar())")

print(miSeatAteca.color, miSeatLeon.color)
