//
//  welcomePageViewController.swift
//  measurementConverterApp
//
//  Created by harsh Khandelwal on 18/05/21.
//

import UIKit

class welcomePageViewController: UIViewController {

    @IBOutlet weak var volumeButton: UIButton!
    @IBOutlet weak var weightButton: UIButton!
    @IBOutlet weak var lengthButton: UIButton!
    @IBOutlet weak var tempButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleSelection(_ sender: UIButton) {
        var convertOptions = [volumeButton, weightButton, lengthButton, tempButton]
        
        convertOptions.forEach { (UIButton) in
            if (UIButton?.isHidden == true){
                UIButton?.isHidden = false
            }else{
                UIButton?.isHidden = true
            }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
