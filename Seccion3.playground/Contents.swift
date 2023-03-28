import UIKit
import Foundation

//Section 1,2,3,4,5

//Caracteres unicode, emoji

let name = "Said"
let caracter = "\u{24}"
let emoji = "😎" //ctrl + command + space
var learn = "aprendiendo Swift"
var welcome = """
Comenzando el aprendizaje de Swift
con Brais Moure y Juan Villalvazo
"""
print("Hola \(name), estás \(learn) \(emoji) \n\n\"\(welcome) \(caracter)\"")

//Colecciones -> Array, set, dictionary
//Array -> Datos desordenados
var myArray = [40]
print("Said tiene \(myArray[0]) años")
myArray.append(33)//Agregar elemento
myArray.insert(4, at: 2)
myArray.removeLast()
print(myArray)

//Set -> Datos desordenados que no se pueden repetir

//Dictionary -> Datos desordenados clave:valor unicos
let myClassicDictionary = Dictionary<Int, String>()
var myModerDictionary = [Int:String]()
myModerDictionary = [001:"Said", 002:"Itziar"]
myModerDictionary[003] = "Nala"
myModerDictionary[001] = nil //borrar
print(myModerDictionary)

//Tuplas
var tuplaNala = (Nombre: "Nala", edad: 4, raza: "Pomerania")
print("\(tuplaNala.0) tiene \(tuplaNala.edad) años y es de raza \(tuplaNala.raza)")

//Enumeraciones -> Estructura para agrupar valores relacionados de forma segura
enum personalData {
    case name
    case surname
    case adress
    case phone
}
var currentData: personalData = .name
currentData = personalData.surname
currentData = .adress

enum complexPersonalData {
    case name(String), surname(String,String), adress(String,Int), phone(Int)
}
var complexCurrentData: complexPersonalData = .name("Nala")
complexCurrentData = .surname("Vega", "Manrique")
complexCurrentData = .adress("Vijagueras", 37)
complexCurrentData = .phone(607426638)

enum rawPersonalData: String{
    case name = "Nombre"
    case surname
    case adress
    case phone
}
rawPersonalData.adress.rawValue
rawPersonalData.name.rawValue

enum rawPersonalData2: Int{
    case name
    case surname
    case adress
    case phone
}
rawPersonalData.name.rawValue

//Operador de rango : Range operator ->
var lista = [0,1,2,3,4,5,6,7]
print(lista[1...3]) //Operador rango doble (indice inicial y final)
print(lista[1..<6])
print(lista[...4]) //Operador de rango unico
print(lista[5...])


//Estructuras de control condicional

let userdata: personalData = .name
switch userdata {
case .name:
    print("Tu nombre")
    break
case .surname:
    print("Tu apellido")
    break
case .adress:
    print("Tu dirección")
    break
case .phone:
    print("Tu teléfono")
    break
}

var contador = 0
for (clave,valor) in myModerDictionary{
    
    print("\(clave):\(valor)")
}
