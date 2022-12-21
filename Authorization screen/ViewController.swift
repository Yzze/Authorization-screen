//
//  ViewController.swift
//  Authorization screen
//
//  Created by Ян Жигурс on 21.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addBackground: UIImageView!
    @IBOutlet weak var loginLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginLabel.text = "Login"
        loginLabel.font = UIFont(name: "ChalkboardSE-Bold", size: 32)
        loginLabel.textColor = .white
    }


}

