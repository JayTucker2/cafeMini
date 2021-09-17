//
//  ViewController.swift
//  cafeMini
//
//  Created by JAYLAN TUCKER on 9/13/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var textField: UITextField!
    var menu : [String : Double] = [:]
    var cart = ""
    var pass = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        menu = ["Apples":2.50]
        menu["Pumpkin"] = 4.25
        menu["Oranges"] = 3.75
        menu["Mango"] = 4.50
        menu["Cherries"] = 1.50
        
    }
    
    @IBAction func addButton(_ sender: Any) {
        let result = textField.text!
        if let add = menu[result]{
    cart += "\(result), \(add) \n"
        }
        else{
            let alertController = UIAlertController(title: "Stop!", message:
                "This item is not available at the moment", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

            self.present(alertController, animated: true, completion: nil)
        }
    }
    @IBAction func menuButton(_ sender: Any) {
        performSegue(withIdentifier: "MenuView", sender: self)
    }
     @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Admin", message: "Please Enter the password", preferredStyle: .alert)

        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.text = "Password"
        }

        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            
            if let passcheck = pass.self{
                
            }
        }))

        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
}

}
