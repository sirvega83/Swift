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
