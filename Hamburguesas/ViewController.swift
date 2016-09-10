//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Jean Matteo on 9/10/16.
//  Copyright © 2016 Jean Matteo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let coleccionDePaises = ColeccionDePaises()
    let coleccionDeHamburguesas = ColeccionDeHamburguesas()
    
    @IBOutlet weak var etiquetaPais : UILabel!
    @IBOutlet weak var etiquetaHamburguesa : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actualizarEtiquetas() {
        etiquetaPais.text = coleccionDePaises.obtenPais()
        etiquetaHamburguesa.text = coleccionDeHamburguesas.obtenHamburguesa()
    }

}

