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
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var buttonForgotPassword: UIButton!
    @IBOutlet weak var labelConnectWith: UILabel!
    @IBOutlet weak var buttonFacebook: UIButton!
    @IBOutlet weak var buttonTwitter: UIButton!
    @IBOutlet weak var labelDontHaveAccount: UILabel!
    @IBOutlet weak var buttonSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginLabel.text = "Login"
        loginLabel.font = UIFont(name: "ChalkboardSE-Bold", size: 32)
        loginLabel.textColor = .white
        
        labelConnectWith.text = "or connect with"
        labelConnectWith.font = UIFont(name: "ChalkboardSE-Light", size: 13)
        labelConnectWith.textColor = .gray
        labelConnectWith.textAlignment = .center
        
        labelDontHaveAccount.text = "Dont have account?"
        labelDontHaveAccount.font = UIFont(name: "ChalkboardSE-Bold", size: 15)
        labelDontHaveAccount.textColor = .gray
        
        textFieldUserName.borderStyle = .none
        textFieldUserName.clipsToBounds = true
        textFieldUserName.layer.cornerRadius = 20
        textFieldUserName.backgroundColor = .white
        textFieldUserName.placeholder = "Login"
        textFieldUserName.setIcon("iconsUser", .left)
        textFieldUserName.setIcon("iconsCheck", .right)
        
        textFieldUserPassword.borderStyle = .none
        textFieldUserPassword.clipsToBounds = true
        textFieldUserPassword.layer.cornerRadius = 20
        textFieldUserPassword.backgroundColor = .white
        textFieldUserPassword.placeholder = "Password"
        textFieldUserPassword.setIcon("iconsLock", .left)
        
        buttonLogin.setTitle("Login", for: .normal)
        buttonLogin.setTitleColor(.white, for: .normal)
        buttonLogin.backgroundColor = .init(red: 69.0/255.0, green: 87.0/255.0, blue: 161.0/255.0, alpha: 0.8)
        buttonLogin.clipsToBounds = true
        buttonLogin.layer.cornerRadius = 20
        buttonLogin.layer.shadowColor = UIColor.black.cgColor
        buttonLogin.layer.shadowOpacity = 0.3
        buttonLogin.layer.shadowOffset = .zero
        buttonLogin.layer.shadowRadius = 10
        buttonLogin.layer.shouldRasterize = true
        buttonLogin.layer.rasterizationScale = UIScreen.main.scale
        buttonLogin.titleLabel?.font = UIFont(name: "ChalkboardSE-Bold", size: 15)
        
        buttonForgotPassword.setTitle("Forgot your password?", for: .normal)
        buttonForgotPassword.setTitleColor(.white, for: .normal)
        buttonForgotPassword.titleLabel?.font = UIFont(name: "ChalkboardSE-Bold", size: 15)
        
        buttonFacebook.setTitle("Facebook", for: .normal)
        buttonFacebook.setTitleColor(.white, for: .normal)
        buttonFacebook.backgroundColor = .init(red: 30.0/255.0, green: 167.0/255.0, blue: 235.0/255.0, alpha: 0.8)
        buttonFacebook.clipsToBounds = true
        buttonFacebook.layer.cornerRadius = 20
        buttonFacebook.setImage(UIImage(named: "iconsFacebook"), for: .normal)
        buttonFacebook.configuration?.imagePadding = 15
        buttonFacebook.imageView?.tintColor = .white
        
        buttonTwitter.setTitle("Twitter", for: .normal)
        buttonTwitter.setTitleColor(.white, for: .normal)
        buttonTwitter.backgroundColor = .init(red: 11.0/255.0, green: 4.0/255.0, blue: 105.0/255.0, alpha: 0.8)
        buttonTwitter.clipsToBounds = true
        buttonTwitter.layer.cornerRadius = 20
        buttonTwitter.setImage(UIImage(named: "iconsTwitter"), for: .normal)
        buttonTwitter.imageView?.tintColor = .white
        buttonTwitter.configuration?.imagePadding = 15
        
        buttonSignUp.setTitle("Sign up", for: .normal)
        buttonSignUp.titleLabel?.font = UIFont(name: "ChalkboardSE-Bold", size: 15)
        buttonSignUp.titleLabel?.textAlignment = .left
    }

}
