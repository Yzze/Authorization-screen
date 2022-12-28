//
//  ExtensionForTextField.swift
//  Authorization screen
//
//  Created by Ян Жигурс on 28.12.2022.
//

import UIKit

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
