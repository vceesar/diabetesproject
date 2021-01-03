//
//  HomeViewController.swift
//  diabetaXD
//
//  Created by Aluno Mack on 24/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit
import CoreData


class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
   
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var unidadeLabel: UILabel!
    
    @IBOutlet weak var gramaLabel: UILabel!
    
    func initialize(){
        
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
              
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     

        
 
        initialize()
        
        
        
        
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        var listaListaNome:[ListaNome] = []
        do {
            listaListaNome = try ((managedContext.fetch(ListaNome.fetchRequest()) as? [ListaNome])!)
        } catch {
            //deu erro
        }
        if (listaListaNome.count > 0) {
            let listaNome = listaListaNome[0]
            gramaLabel.text = "\(Int(listaNome.grama))"
            unidadeLabel.text = "\(Int(listaNome.unidade))"
        }
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return Singleton.sharedInstance.dadosTitulo.count
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return Singleton.sharedInstance.dadosTitulo.count
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as!
            AlimentosTVC
            
            let row = indexPath.row
            
            
            cell.nomeAlimentoCell.text = Singleton.sharedInstance.dadosTitulo[indexPath.row]
        
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 90
        }
        

        
}
        

    
    


