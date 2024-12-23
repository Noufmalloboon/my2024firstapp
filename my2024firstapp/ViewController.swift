//
//  ViewController.swift
//  my2024firstapp
//
//  Created by Nouf Alloboon on 14/01/1446 AH.
//

//////
///


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblhieveryone: UILabel!
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnSignin: UIButton!
    
    @IBOutlet weak var btnRegister: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSignin(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC")
        if let viewController = vc {
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    @IBAction func btnRegister(_ sender: Any) {
    }
}

