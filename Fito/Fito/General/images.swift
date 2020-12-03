//
//  images.swift
//  MyFramework
//
//  Created by Nicolás Acosta on 02/12/2020.
//

import Foundation
import UIKit

extension UIViewController {
    
    open func imageFromData(_ data: Data?) -> UIImage? {
        if let safeData = data {
            return UIImage(data: safeData) ?? nil
        }
        return nil
    }
    
    
}

extension UIImageView {
    
    open func whiteBorders() {
        
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 5
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        
    }
    
}


extension UIViewController {
    
    
    open func share(items: [Any]) {
        let share = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(share, animated: true)
    }
    
    
    //MARK: - Save image

    open func saveImage(_ image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }

    open func saveImages(_ images: [UIImage]) {
        for image in images {
            saveImage(image)
        }
    }
    
    //MARK: - Save Image callback

    @objc open func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {

        if let error = error {

            print(error.localizedDescription)

        } else {

            print("Success")
        }
    }

}

