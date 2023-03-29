import UIKit

//SECTION 6

//Funciones

func cubo(num:Int) -> Int{
    let cubo = num * num * num
    return cubo
}

cubo(num: 4)

//Valores por defecto

func saludar(nombre:String, mensaje:String = ", eres un GoodAppleCodding !!!") -> String {
    return "Hola \(nombre) \(mensaje)"
}
print(saludar(nombre: "Said"))


//Valores múltiples de retorno

func listaNombres() -> [String]{
    let arrayNombres = ["Said", "Itziar", "Nala"]
    return arrayNombres
}
print(listaNombres())


//Introduccion closure

func notaPromedio(mb:Double, fq:Double, aq:Double) -> Double{
    return (mb + fq + aq)/3
}
print("Mi nota media es: \(notaPromedio(mb: 7.8, fq: 8.1, aq: 3.0))")

/* //closure

    var closure = {(parametros) -> tipo-valor-retorno in
    codigo
    }
*/

let myFirstClosure = {(mb:Double,fq:Double,aq:Double)-> Double in
    return (mb + fq + aq)/3
    
}

print("Mi nota media es: \(myFirstClosure(8.2, 7.5, 6))")
