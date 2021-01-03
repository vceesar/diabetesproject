//
//  PopUpVC.swift
//  diabetaXD
//
//  Created by Aluno Mack on 24/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit
import CoreData

class PopUpVC: UIViewController {
    var tipoLista:HomeViewController?
    
    var foodname:String?
    var carb:Int?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.clear
        view.isOpaque = false
    }
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func DismissPopUp(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func Cancel(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
    }
    @IBAction func Done(_ sender: UIButton) {
       

        self.DismissPopUp(sender)
        
        if let x = foodname{
            Singleton.sharedInstance.dadosTitulo.append(x)
            
        }
        if let x = carb{
        Singleton.sharedInstance.dadosCarbo.append(x)
        
        }
        
        
      
        
    }
   
    
    }

 



