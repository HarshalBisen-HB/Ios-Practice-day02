import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnRounded: UIButton!
    
    @IBOutlet weak var textViewEmail: UITextField!
    
    
    @IBOutlet weak var textViewName: UITextField!
    
    
    @IBOutlet weak var textReg: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnRounded.layer.cornerRadius = 15
        btnRounded.backgroundColor = UIColor.systemBlue
        btnRounded.setTitleColor(.white, for: .normal)
        btnRounded.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        
        
        btnRounded.layer.shadowColor = UIColor.black.cgColor
        btnRounded.layer.shadowOffset = CGSize(width: 0,height: 3)
        btnRounded.layer.shadowRadius = 5
        btnRounded.layer.shadowOpacity = 0.2
        btnRounded.layer.masksToBounds = false
        
        
        textReg.font = .systemFont(ofSize: 24, weight: .bold)
        textReg.textColor = UIColor.darkGray
        
    }
    
    
    @IBAction func onRegister(_ sender: Any) {
        //VALIDATION
        func showMessage(message: String){
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel))
            
            present(alert, animated: true,completion: nil)
        }
        
        if textViewEmail.text!.isEmpty
        {
            showMessage(message: "please enter email")
        }
        else if textViewName.text!.isEmpty {
            showMessage(message: "please enter password")
            
        }
        else{
            print(textViewEmail.text!)
            print(textViewName.text!)
            
            
            
            //get storyboard object
              let storyboard = UIStoryboard(name:"Main", bundle: nil)
              
              //instantiate a view controller
              let vc = storyboard.instantiateViewController(withIdentifier:"HomeViewController")as! HomeViewController
              
            vc.emailN = textViewEmail.text!
            vc.passwordN = textViewName.text!
              //present view controller
            navigationController?.pushViewController(vc, animated: true)
              
}
      
        
        
        
        
    }
    
}
