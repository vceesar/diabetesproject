

import UIKit
import CoreData

class dataViewController: UIViewController {
    var name:String? = ""
     var people: [NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let tempName = name{
            welcomeLabekl.text = "Bem Vindo, \(tempName)!"
    }
}
    
    @IBOutlet weak var welcomeLabekl: UILabel!
    
    @IBAction func button(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC")
//        self.present(mainVC, animated: true, completion: nil)
        (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = mainVC
        
        
        
        
        
        
        
    }
    
    @IBOutlet weak var unAdd: UITextField!
   
    @IBOutlet weak var grAdd: UITextField!
    
    
    @IBAction func prosseguirButton(_ sender: Any) {
        
        let varRazao1 = unAdd.text!
        let varRazao2 = grAdd.text
        
        save(unidade: varRazao1, grama: varRazao2!)
    }
    func save(unidade: String, grama: String) {
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                return
            }
            let managedContext = appDelegate.persistentContainer.viewContext
            let lista = NSEntityDescription.insertNewObject(forEntityName: "ListaNome", into: managedContext)
    //        let entity = NSEntityDescription.entity(forEntityName: "ListaNome", in: managedContext)!
    //        let person = NSManagedObject(entity: entity, insertInto: managedContext)
            (lista as? ListaNome)?.unidade = int_fast64_t(Int(unidade)!)
            (lista as? ListaNome)?.grama = int_fast64_t(Int(grama)!)
            
            do {
                try managedContext.save()
            } catch let error as NSError {
                print("Could not save. \(error), \(error.userInfo)")
            }
        }

    
    
    
    
    
    
     // BOTAO design ----------------------------------- //
    var bottomCustomButton = CustomBotton()
        
    @IBOutlet weak var topCustomButton: CustomBotton!
    
         
         func setupBottomButtonConstraints() {
             view.addSubview(bottomCustomButton)
             bottomCustomButton.translatesAutoresizingMaskIntoConstraints = false
             bottomCustomButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
             bottomCustomButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
             bottomCustomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
             bottomCustomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
         }
         
         
         func addActionToBottomButton() {
             bottomCustomButton.addTarget(self, action: #selector(bottomButtonTapped), for: .touchUpInside)
         }
         
         
         
    @IBAction func topButtonTapped(_ sender: CustomBotton) {
        topCustomButton.shake()
    }
    
      
       
         @objc func bottomButtonTapped() {
             bottomCustomButton.shake()
         }
       
    
    //-----------------------------------------------//
    
}
