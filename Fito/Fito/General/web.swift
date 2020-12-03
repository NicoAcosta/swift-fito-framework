//
//  web.swift
//  MyFramework
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit
import WebKit


extension WKWebView {
    
    open func loadPage(URLString: String?) {
        
        if let safeURL = URLString {
            let url = URL(string: safeURL)
            let request = URLRequest(url: url!)
            self.load(request)
        }
        
    }
    
}

extension UIViewController {
    
    open func openInSafari(URLString: String?) {
        
        if let safeURL = URLString {
            UIApplication.shared.open(URL(string: safeURL)!)
        }
        
    }
    
}
