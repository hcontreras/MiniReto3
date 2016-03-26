//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Humberto Contreras on 24/03/16.
//  Copyright © 2016 Humberto Contreras. All rights reserved.
//

import UIKit

// Review Criteria
// ¿El playground se encuentra en GitHub? - OK
// ¿El playground está hecho en Swift? - OK

class ViewController: UIViewController {
    
    // Review Criteria
    // ¿La interfaz gráfica define las dos etiquetas y el botón de: “Quiero una hamburguesa!!!”? - OK
    // ¿Los elementos gráficos se encuentran centrados? - OK (Setear el emulador en iPhone5s)
    // ¿La clase ViewController.swift cuenta con: 
    // Un @IBoutlet para la etiqueta de país. - OK
    // Un @IBoutlet para la etiqueta de hamburguesa.  - OK
    // Un @IBAction para implementar cambiar de país y de hamburguesa? - OK
    // Componentes
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblHamburguesa: UILabel!
    
    // Review Cirteria
    // ¿La clase ViewController.swift define una instancia de cada una de las siguientes 
    // clases ColeccionDePaises,  ColeccionDeHamburguesas? - OK
    // Intancias
    let paises: ColeccionDePaises = ColeccionDePaises()
    let hamburguesas: ColeccionDeHamburguesa = ColeccionDeHamburguesa()
    let color: Colores = Colores()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Al iniciar la aplicación se ejecuta para hacer la primer aisgnación de País/Hamburguesa
        obtenerPaisYHamburguesa()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Review Criteria
    // ¿Al presionar el botón se cambian de manera aleatoria los valores 
    // de la etiqueta país y hamburguesa? - OK
    // Accion que ejecuta el botón
    @IBAction func mostrarNuevaHamburguesa() {
        self.obtenerPaisYHamburguesa()
    }
    
    // Función que manda solicitar los recursos
    func obtenerPaisYHamburguesa()->Void{
        let colorAleatorio      = color.regresaColorAleatorio()
        view.backgroundColor    = colorAleatorio
        view.tintColor          = colorAleatorio
        lblPais.text            = "País: \(paises.obtenPais())"
        lblHamburguesa.text     = "Hamburguesa: \(hamburguesas.obtenHamburguesa())"
    }
}