//
//  ViewController.swift
//  cafeMini
//
//  Created by JAYLAN TUCKER on 9/13/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var cart : [String: Double] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cart = ["Apples":2.50]
        cart["Pumpkin"] = 4.25
        cart["Oranges"] = 3.75
        cart["Mango"] = 4.50
        cart["Cherries"] = 1.50
        menuLabel.text = cart
    }
    
    @IBAction func addButton(_ sender: Any) {
        let result = textField.text!
        if let add = cart[result]{
    
        }
        else{
            let alertController = UIAlertController(title: "Stop!", message:
                "This item is not available at the moment", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

            self.present(alertController, animated: true, completion: nil)
        }
    }
   /* @IBAction func showAlert(_ sender: Any) {
     let alertController = UIAlertController(title: "Sorry!", message:
         "This item is not available at the moment", preferredStyle: .alert)
     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

     self.present(alertController, animated: true, completion: nil)
} */

}
