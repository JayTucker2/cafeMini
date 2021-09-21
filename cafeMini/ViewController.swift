//
//  ViewController.swift
//  cafeMini
//
//  Created by JAYLAN TUCKER on 9/13/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var textField: UITextField!
   // @IBOutlet weak var adminField: UITextField!
    @IBOutlet weak var cartLab: UILabel!
    @IBOutlet weak var menulab: UILabel!
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
        menulab.text = "Apples, 2.50\n Pumpkin, 4.25\n Oranges, 3.75\n Mango, 4.50\n Cherries, 1.50"
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
        cartLab.text = cart
    }
    
  //  @IBAction func admin(_ sender: Any) {
    }
   // if pass == adminField.text{
  //  }
  //  }
        
        



