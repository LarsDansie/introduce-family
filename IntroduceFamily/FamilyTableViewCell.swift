//
//  FamilyTableViewCell.swift
//  IntroduceFamily
//
//  Created by Lars Dansie on 10/5/23.
//

import UIKit

class FamilyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var familyView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var relationLabel: UILabel!
    @IBOutlet weak var familyImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
   
}
