//
//  HomeVC.swift
//  my2024firstapp
//
//  Created by Nouf Alloboon on 23/01/1446 AH.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var arrFruits = [Fruit]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        arrFruits.append(Fruit(name: "Orange", price: 20, description: "It is a fruit", photo: UIImage(systemName: "frying.pan")!))
                         
    }
    


}

extension HomeVC{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! HomeTableViewCell
        let data = arrFruits[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name, price: data.price, description: data.description)
        cell.favoriteBtn.tag = indexPath.row
        cell.favoriteBtn.addTarget(self, action: #selector(AddToFavorite(sender:)), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    @objc
    func AddToFavorite (sender: UIButton){
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        
    }
}
 
struct Fruit{
    let name: String
    let price: Double
    let description: String
    let photo: UIImage
}
