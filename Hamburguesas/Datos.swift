//
//  Datos.swift
//  Hamburguesas
//
//  Created by Humberto Contreras on 24/03/16.
//  Copyright © 2016 Humberto Contreras. All rights reserved.
//

import Foundation
import UIKit

// Clase de países
class ColeccionDePaises {
    let paises: [String] = ["México", "E.E.U.U.", "Canadá", "Guatemala", "Alaska", "Brasil", "Colombia", "Argentina", "Uruguay", "Chile", "España", "Portugal", "Inglaterra", "Alemania", "Suiza", "Francia", "Italia", "Noruega", "China", "Japón"]
    
    func obtenPais()->String{
        let index: Int = Int(arc4random()) % paises.count
        return paises[index]
    }
}

// Clase de hamburguesas
class ColeccionDeHamburguesa {
    let hamburguesas: [String] = ["Sencilla", "Especial", "Doble", "Triple", "Con Salchicha", "Hawaiana", "Con Champiñones", "Gratinada", "Con Tocino", "Con Jamón", "Con Peperoni", "Gourmet", "Al Carbón", "Con Arrachera", "Con Mariscos", "Con Pollo Asado", "Con Pollo Empanizado", "Con Guacamole", "Con Aderezo", "Con Vegetales"]
    
    func obtenHamburguesa()->String{
        let index: Int = Int(arc4random()) % hamburguesas.count
        return hamburguesas[index]
    }
}

// Colores
struct Colores {
    let colores = [
        UIColor(red: 0.761, green: 0.737, blue: 0.769, alpha: 1.00),
        UIColor(red: 0.549, green: 0.314, blue: 0.322, alpha: 1.00),
        UIColor(red: 0.533, green: 0.510, blue: 0.631, alpha: 1.00),
        UIColor(red: 0.745, green: 0.467, blue: 0.298, alpha: 1.00),
        UIColor(red: 0.839, green: 0.608, blue: 0.435, alpha: 1.00),
        UIColor(red: 0.839, green: 0.710, blue: 0.710, alpha: 1.00),
        UIColor(red: 0.765, green: 0.490, blue: 0.467, alpha: 1.00),
        UIColor(red: 0.635, green: 0.573, blue: 0.471, alpha: 1.00),
        UIColor(red: 0.592, green: 0.455, blue: 0.349, alpha: 1.00),
        UIColor(red: 0.671, green: 0.525, blue: 0.620, alpha: 1.00),
        UIColor(red: 0.718, green: 0.647, blue: 0.631, alpha: 1.00),
        UIColor(red: 0.588, green: 0.510, blue: 0.357, alpha: 1.00),
        UIColor(red: 0.733, green: 0.612, blue: 0.357, alpha: 1.00),
        UIColor(red: 0.506, green: 0.561, blue: 0.518, alpha: 1.00),
        UIColor(red: 0.329, green: 0.529, blue: 0.537, alpha: 1.00),
        UIColor(red: 0.525, green: 0.737, blue: 0.839, alpha: 1.00),
        UIColor(red: 0.392, green: 0.549, blue: 0.784, alpha: 1.00)
    ]

    func regresaColorAleatorio()->UIColor{
        let index: Int = Int(arc4random()) % colores.count
        return colores[index]
    }
}