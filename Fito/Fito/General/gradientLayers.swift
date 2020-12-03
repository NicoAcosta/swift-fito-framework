//
//  gradientLayers.swift
//  MyFramwork
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit

extension UIViewController {
    
    //  Agregar esto a override func viewDidLayoutSubviews()
    func gradientLayer(colors: [UIColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.colors = colors.map({$0.cgColor})
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}


extension UIView {
    
    func gradientLayer(colors: [UIColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.colors = colors.map({$0.cgColor})
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = 5
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
