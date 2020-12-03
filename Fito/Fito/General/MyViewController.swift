//
//  MyViewController.swift
//  MyFramwork
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit


open class MyViewController : UIViewController {
    
    open var myUserInterfaceStyle : UIUserInterfaceStyle? {
        return nil
    }
    
    open var myBackgroundGradientLayerColors : [UIColor]? {
        return nil
    }
    
    open var myBackgroundColor : UIColor? {
        return nil
    }
    
    
    
    
    
    
    
    
    
    

    
    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if myUserInterfaceStyle != nil {
            overrideUserInterfaceStyle = myUserInterfaceStyle!
        }
        
        if myBackgroundGradientLayerColors != nil {
            gradientLayer(colors: myBackgroundGradientLayerColors!)
        } else if myBackgroundColor != nil {
            view.backgroundColor = myBackgroundColor!
        }
        
        setNeedsStatusBarAppearanceUpdate()
    }
    
    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setNeedsStatusBarAppearanceUpdate()
    }
    
    
}
