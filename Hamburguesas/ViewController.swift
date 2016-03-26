//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Humberto Contreras on 24/03/16.
//  Copyright © 2016 Humberto Contreras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Componentes
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblHamburguesa: UILabel!
    
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

