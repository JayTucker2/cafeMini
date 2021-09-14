//
//  ViewController.swift
//  cafeMini
//
//  Created by JAYLAN TUCKER on 9/13/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var cartLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var cart : [String: Double] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cart["Apples"] = 2.50
        cart["Pumpkin"] = 4.25
        cart["Oranges"] = 3.75
        cart["Apple Pie"] = 5.50
    }
    @IBAction func addButton(_ sender: Any) {
        if let add = cart["textField"]{
            cartLabel.text = "item     price"
        }
        else{
            let alertController = UIAlertController(title: "Stop!", message:
                "This item is not available at the moment", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

            self.present(alertController, animated: true, completion: nil)
        }
    }
    @IBAction func showAlert(_ sender: Any) {
     let alertController = UIAlertController(title: "Sorry!", message:
         "This item is not available at the moment", preferredStyle: .alert)
     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

     self.present(alertController, animated: true, completion: nil)
}

}
