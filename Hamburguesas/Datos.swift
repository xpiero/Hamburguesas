//
//  Datos.swift
//  Hamburguesas
//
//  Created by Jean Matteo on 9/10/16.
//  Copyright © 2016 Jean Matteo. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    
    var paises : [String]!
    
    init() {
        paises = ["Venezuela","Chile","España","Brasil","Colombia","USA","Mexico","Australia","Italia","Francia","Argentina","Canada","China","Japón","Irlanda","Jamaica","Islandia","Suecia","Rusia","Panamá"]
    }
    
    func obtenPais() -> String {
        let random = Int(arc4random()) % paises.count
        return paises[random]
    }
}

class ColeccionDeHamburguesas {
    
    var hamburguesas : [String]!
    
    init() {
        hamburguesas = ["tipo americano", "vegetariana", "ligera", "con champiñones", "con queso azul", "picante", "doble", "sencilla", "triple", "revienta dieta", "tapa arterias", "especial", "tipo plain", "de pollo", "con tocineta", "con cebolla caramelizada", "con pepinillo", "4 quesos", "con queso", "con queso roquefort"]
    }
    
    func obtenHamburguesa() -> String{
        let random = Int(arc4random()) % hamburguesas.count
        return hamburguesas[random]
    }
}