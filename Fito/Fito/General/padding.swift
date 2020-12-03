//
//  padding.swift
//  MyFramework
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit


open class UITextFieldPadding : UITextField {
    
    public var padding = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
      
    public convenience init (top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) {
        self.init()
        padding = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    }
    
    /*
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
      }
      */
    open override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
      }
      
    open override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
      }
      
    open override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
      }
    
}


open class UITextViewPadding : UITextView {
    
    public convenience init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) {
        self.init()
        textContainerInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    }
    
    public convenience init() {
        self.init()
        textContainerInset = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
    }
    /*
      required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        textContainerInset = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
      }
    */
}

