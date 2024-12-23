//
//  HomeTableViewCell.swift
//  my2024firstapp
//
//  Created by Nouf Alloboon on 23/01/1446 AH.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var favoriteBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(photo: UIImage, name: String, price: Double, description: String){
        
        fruitImageView.image = photo
        nameLbl.text = name
        priceLbl.text = "\(price) SAR"
        descriptionLbl.text = description
    }
    @IBAction func favoriteBtn(_ sender: Any) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
