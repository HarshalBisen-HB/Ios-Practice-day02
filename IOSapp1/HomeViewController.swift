
import UIKit

class HomeViewController: UIViewController {

  
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var passsword: UILabel!
    
    
    //properties
    
    var emailN:String?
    var passwordN:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //
        email.text = emailN
        passsword.text = passwordN
    }
    

   
    @IBAction func onPopViewController(_ sender: Any) {
       
    navigationController?.popViewController(animated: true)
        
    }
}
