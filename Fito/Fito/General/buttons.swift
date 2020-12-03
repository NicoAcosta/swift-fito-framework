//
//  buttons.swift
//  MyFramework
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit


extension UIButton {
    
    func enable() {
        self.isEnabled  =   true
        self.alpha      =   1
    }
    
    func disable() {
        self.isEnabled  =   false
        self.alpha      =   0.6
    }
    
    func titleColor(_ color: UIColor) {
        self.setTitleColor(color, for: .normal)
    }
    
    func backgroundColor(_ color: UIColor) {
        self.backgroundColor = color
    }
    
    func font(_ name: String) {
        self.titleLabel?.font = UIFont(name: name, size: (self.titleLabel?.font.pointSize)!)!
    }
    
    
    
}


extension Array where Iterator.Element == UIButton {
    
    func enable() {
        self.forEach({$0.enable()})
    }
    
    func disable() {
        self.forEach({$0.disable()})
    }
    
    var areEnabled : Bool {
        return first!.isEnabled
    }
    
    
}
