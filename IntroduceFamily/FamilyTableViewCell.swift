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
        familyImageView.layer.cornerRadius = familyImageView.frame.height / 2
    }
    
    func update(with familyMember: FamilyMember) {
        nameLabel.text = familyMember.name
        relationLabel.text = familyMember.relation
        familyImageView.image = familyMember.image
//        cell.bioLabel.text = familyMember.bio
        familyImageView.layer.cornerRadius = familyImageView.frame.height / 2
    }
    
}
