//
//  ViewController.swift
//  hello_world
//
//  Created by harsh Khandelwal on 12/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printInHello: UILabel!
    @IBOutlet weak var printHello: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Print_hello(_ sender: Any) {
        printInHello.text = "Hello to the World"
    }
    
}

