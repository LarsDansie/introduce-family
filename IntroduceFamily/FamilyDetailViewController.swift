//
//  FamilyDetailViewController.swift
//  IntroduceFamily
//
//  Created by Lars Dansie on 10/5/23.
//

import Foundation
import UIKit



class FamilyDetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var relationLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var familyImageView: UIImageView!
    
    var familyMember: Family?




    override func viewDidLoad() {
        super.viewDidLoad()
        
        familyImageView.layer.cornerRadius = familyImageView.frame.size.width / 2
                familyImageView.clipsToBounds = true
        
        familyImageView.image = familyMember?.image
        nameLabel.text = familyMember?.name
        bioLabel.text = familyMember?.bio
        relationLabel.text = familyMember?.relation
    }
}
