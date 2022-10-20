//
//  ModificarController.swift
//  informacion
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ModificarController: UIViewController {

    var texto: String?
    var callbackUpdate : ((String) -> Void)?
    @IBOutlet weak var txtTexto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if texto != nil {
            txtTexto.text = texto
        }
    }
    @IBAction func doTapActualizar(_ sender: Any) {
        if callbackUpdate != nil
        {
            callbackUpdate!(txtTexto.text!)
        }
    }
    
    
}
