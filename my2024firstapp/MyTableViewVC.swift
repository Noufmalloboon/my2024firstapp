//
//  MyTableViewVC.swift
//  my2024firstapp
//
//  Created by Nouf Alloboon on 23/01/1446 AH.
//

import UIKit

class MyTableViewVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var MyTableView: UITableView!
    let namesArr = ["Nouf", "Sara", "Hala"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MyTableView.delegate = self
        MyTableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = namesArr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(namesArr[indexPath.row]), index: \(indexPath.row)")
    }

}
