import UIKit

//Optionals
let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Said"
let myWrongIntNumber:Int? = Int(myWrongStringNumber)


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
class Students{
    var name:String?
    var book:Books?
}

class Books{
    var name:String?
    var pages:Int?
}

let myStudent = Students()
print(myStudent.name)
print(myStudent.book?.pages)
myStudent.name = "Said"


let myBook = Books()
myBook.name = "El sabueso de los Baskerville"
myBook.pages = 100
myStudent.book = myBook

//Enlaces opcionaes encadenados
if let pages = myStudent.book?.pages, let name = myStudent.name, let bookName = myBook.name{
    print("El libro de \(name), \(bookName), tiene \(pages) paginas.")
}else { // "else if let" para seguir comprobando valores nil
    print("El libro no tiene páginas")
}


//GUARD LET -> Sentencia de salida rápida
// Lo ejecutamos dentro de una función, para parar la ejecución de esta

var stringOpcional:String?

func miFuncion(){
    
    guard let miString = stringOpcional else {
        print("El valor de miString es nulo")
        return //Pararía la ejecución del programa
    }
    print("El valor de miString es : \(miString)")
}

miFuncion()
stringOpcional = "¡Comenzamos a picar Swift!"
miFuncion()


//Manejo de errores

func suma(firstNumber:Int?, secondNumber:Int?) throws -> Int {
    if firstNumber == nil {
        throw sumError.firstNumberNil
    }else if secondNumber == nil {
        throw sumError.secondNumberNil
    }else if firstNumber! < 0 || secondNumber! < 0 {
        throw sumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    return firstNumber! + secondNumber!
}

//Definicion de tipos de errores

enum sumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

//Propagacion de erroes
do{
    print(try suma(firstNumber: 25, secondNumber: 25))
    
} catch sumError.firstNumberNil {
    print("El primer número es nulo")
} catch sumError.secondNumberNil {
    print("El segundo número es nulo")
} catch sumError.numberNegative(let firstNumber, let secondNumber) {
    print("Hay algún número negativo. firstNumber: \(firstNumber), secondNumber: \(secondNumber)")
}
