//
//  ViewController.swift
//  informacion
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var swPermisoNavigation: UISwitch!
    @IBOutlet weak var lblAdvertenciaSwitch: UILabel!
    @IBOutlet weak var lblTexto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblAdvertenciaSwitch.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ModificarController
        destino.texto = lblTexto.text
        destino.callbackUpdate = actualizarTexto
    }
    
    @IBAction func doTapGoToVC(_ sender: Any) {
        lblAdvertenciaSwitch.isHidden = true
        if swPermisoNavigation.isOn{
            performSegue(withIdentifier: "goToModifier", sender: self)
        } else {
            lblAdvertenciaSwitch.isHidden = false
        }
    }
    
    func actualizarTexto(texto:String){
        lblTexto.text = texto
    }
    
}

