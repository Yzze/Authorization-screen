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
    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldUserPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginLabel.text = "Login"
        loginLabel.font = UIFont(name: "ChalkboardSE-Bold", size: 32)
        loginLabel.textColor = .white
        
        textFieldUserName.borderStyle = .none
        textFieldUserName.clipsToBounds = true
        textFieldUserName.layer.cornerRadius = 20
        textFieldUserName.backgroundColor = .white
        textFieldUserName.placeholder = "Login"
        textFieldUserName.setIcon("iconsUser", .left)
        
        textFieldUserPassword.borderStyle = .none
        textFieldUserPassword.clipsToBounds = true
        textFieldUserPassword.layer.cornerRadius = 20
        textFieldUserPassword.backgroundColor = .white
        textFieldUserPassword.placeholder = "Password"
        textFieldUserPassword.setIcon("iconsLock", .left)
    }


}

extension UITextField {
    enum Direction {
        case left, right
    }
    
    func setIcon(_ image: String, _ direction: Direction) {
        let iconView = UIImageView(frame: CGRect(x: 20, y: 5, width: 20, height: 20))
        iconView.image = UIImage(named: image)
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 50, height: 30))
        iconContainerView.addSubview(iconView)
        if Direction.left == direction {
            leftView = iconContainerView
            leftViewMode = .always
        } else {
            self.rightView = iconContainerView
            self.rightViewMode = .always
        }
        
    }
}
