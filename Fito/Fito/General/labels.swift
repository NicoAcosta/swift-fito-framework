//
//  labels.swift
//  MyFramework
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit

extension UILabel {
    
    func color(_ color: UIColor) {
        self.textColor = color
    }
    
    func text(_ text: String) {
        self.text = text
    }
    
    func font(_ name: String) {
        self.font = UIFont(name: name, size: self.font.pointSize)!
    }
    
    func fontWithSize(_ name: String, _ size: CGFloat) {
        self.font = UIFont(name: name, size: size)
    }
    
}
