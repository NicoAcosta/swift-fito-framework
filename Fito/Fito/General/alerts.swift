//
//  alerts.swift
//  MyFramework
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit


extension UIViewController {
    
    open func okAlert(title: String, message: String) {
        let alert = OkAlert(title: title, message: message)
        present(alert, animated: true, completion: nil)
    }
    
    open func deleteAlert(title: String, message: String, deleteBlock: @escaping (UIAlertAction) -> Void) {
        let alert = DeleteAlert(title: title, message: message, deleteBlock: deleteBlock)
        present(alert, animated: true, completion: nil)
    }
    
}


open class OkAlert : UIAlertController {
    
    public convenience init(title: String?, message: String?) {
        self.init(title: title, message: message, preferredStyle: .alert)
        addAction(UIAlertAction(title: "Ok", style: .default))
        
    }
    
}


open class DeleteAlert : UIAlertController {
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
    
    func deleteAction(block: @escaping (UIAlertAction) -> Void) -> UIAlertAction {
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: block)
        return deleteAction
    }
    
    
    public convenience init(title: String?, message: String?, deleteBlock: @escaping (UIAlertAction) -> Void) {
        
        self.init(title: title, message: message, preferredStyle: .alert)
        
        //Add the actions to the alert controller
        addAction(cancelAction)
        addAction(deleteAction(block: deleteBlock))
        
    }
    
    
}
