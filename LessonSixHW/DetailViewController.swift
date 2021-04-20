//
//  DetailViewController.swift
//  LessonSixHW
//
//  Created by admin on 20.04.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var name: String!
    var email: String!
    var phoneNumber: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
        emailLabel.text = email
        phoneLabel.text = phoneNumber
        
    }
    
}
