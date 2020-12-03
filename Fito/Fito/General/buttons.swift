//
//  buttons.swift
//  MyFramework
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit


extension UIButton {
    
    open func enable() {
        self.isEnabled  =   true
        self.alpha      =   1
    }
    
    open func disable() {
        self.isEnabled  =   false
        self.alpha      =   0.6
    }
    
    open func titleColor(_ color: UIColor) {
        self.setTitleColor(color, for: .normal)
    }
    
    open func backgroundColor(_ color: UIColor) {
        self.backgroundColor = color
    }
    
    open func font(_ name: String) {
        self.titleLabel?.font = UIFont(name: name, size: (self.titleLabel?.font.pointSize)!)!
    }
    
    
    
}


extension Array where Iterator.Element == UIButton {
    
    public func enable() {
        self.forEach({$0.enable()})
    }
    
    public func disable() {
        self.forEach({$0.disable()})
    }
    
    public var areEnabled : Bool {
        return first!.isEnabled
    }
    
    
}
