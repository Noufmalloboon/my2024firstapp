//
//  SecondVC.swift
//  my2024firstapp
//
//  Created by Nouf Alloboon on 14/01/1446 AH.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var btnClose: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnClose(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
