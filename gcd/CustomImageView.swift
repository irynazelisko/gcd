//
//  Networking.swift
//  gcd
//
//  Created by Ірина Зеліско on 12.01.2023.
//

import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

final class CustomImageView: UIImageView {
    
    func loadImage(form url: URL) {
        
        if let imageFromCache = imageCache.object(forKey: url.absoluteString as AnyObject) as? UIImage {
            self.image = imageFromCache
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let data = data,
                let newImage = UIImage(data: data)
            else {
                print("couldn't load image from url \(url)")
                return
            }
            imageCache.setObject(newImage, forKey: url.absoluteString as AnyObject)
            DispatchQueue.main.async {
                self.image = newImage
            }
        }
        task.resume()
    }
}


