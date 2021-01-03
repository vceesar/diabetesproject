
import UIKit

class loginViewController: UIViewController{
    @IBOutlet weak var nomeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupBottomButtonConstraints()
//                 addActionToBottomButton()
//                 bottomCustomButton.setTitle("Bottom", for: .normal)
        
       
    }

    
  
          
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "loginToData" {
        let vc = segue.destination as! dataViewController
       vc.name = nomeTextField.text
    }
        
}
    
    //Botao design------------------------------------------------------------//
    
    
    @IBOutlet weak var topCustomButton: CustomBotton!
    var bottomCustomButton = CustomBotton()
     
      
      
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
    
 //------------------------------------------------------------//
}
