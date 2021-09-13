//
//  ViewController.swift
//  cafeMini
//
//  Created by JAYLAN TUCKER on 9/13/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cartLabel: UILabel!
    var cart : [String: Double] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    cart["Apple"] = 2.50
    @IBAction func addButton(_ sender: Any) {
    }
    
}

