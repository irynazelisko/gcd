//
//  Networking.swift
//  gcd
//
//  Created by Ірина Зеліско on 12.01.2023.
//

import UIKit

extension UIImageView {
    
    private static let imageCache = ImageCache()
    
    func cache(image: UIImage, forKey key: String) {
        UIImageView.imageCache.cache(image: image, forKey: key)
    }
    
    func image(forKey key: String) -> UIImage? {
        return UIImageView.imageCache.image(forKey: key)
    }
    
    func loadImage(form url: URL) {
        if let imageFromCache = image(forKey: url.absoluteString) {
            self.image = imageFromCache
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data, let newImage = UIImage(data: data) {
                self.cache(image: newImage, forKey: url.absoluteString)
                DispatchQueue.main.async {
                    self.image = newImage
                }
            } else {
                print("couldn't load image from url \(url)")
                return
            }
        }
        task.resume()
    }
}


