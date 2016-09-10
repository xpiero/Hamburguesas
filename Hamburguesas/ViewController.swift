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
    @IBOutlet weak var etiquetaPrecio : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
    }
    
    @IBAction func actualizarEtiquetas() {
        etiquetaPais.text = coleccionDePaises.obtenPais()
        etiquetaHamburguesa.text = coleccionDeHamburguesas.obtenHamburguesa()
        etiquetaPrecio.text = "$\(coleccionDeHamburguesas.obtenerPrecio())"
        if(etiquetaPrecio.hidden){
            etiquetaPrecio.hidden = false
        }
        cambiarFondo()
    }
    
    func cambiarFondo() {
        if(view.backgroundColor == UIColor.whiteColor()) {
            UIView.animateWithDuration(0.5, animations: {
                self.view.backgroundColor = UIColor.blackColor()
                self.etiquetaPais.textColor = UIColor.whiteColor()
                self.etiquetaPrecio.textColor = UIColor.whiteColor()
            })
        } else {
            UIView.animateWithDuration(0.5, animations: {
                self.view.backgroundColor = UIColor.whiteColor()
                self.etiquetaPais.textColor = UIColor.blackColor()
                self.etiquetaPrecio.textColor = UIColor.blackColor()
            })
        }
    }

}

