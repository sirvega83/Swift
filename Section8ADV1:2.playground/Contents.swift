import UIKit

//Optionals
let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Said"
let myWrongIntNumber:Int? = Int(myWrongStringNumber)

var myOptionalString: String?
print(myOptionalString)

//Optional binding -> enlaces opcionales
var miOptionalString:String?
//miOptionalString = "Said"
if let myString = miOptionalString{
       print("Contenido de myString: \(myString)")
}else{
    print("Sin contenido")
}

//Desempaquetado forzado
var miOptionalString2:String?
miOptionalString2 = "Itziar"
//print(miOptionalString2!) // ! para forzar si estamos seguros que es != nil

//Otra forma de desempaquetar
if miOptionalString2 != nil {
    print(miOptionalString2!)
}

//Optional chaining -> cadenas de opcionales
class student{
    var name:String?
    var book:libro?
}

class libro{
    var paginas:Int?
}

var myOptStudent = student()
myOptStudent.name = "Said"
myOptStudent.book = "La llamada de Cuthullu"

var myOptLibro = libro()
myOptLibro.paginas = 100

print(myOptStudent.name)
print(myOptStudent.book?.paginas)

