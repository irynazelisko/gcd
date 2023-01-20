//
//  ImageCache.swift
//  gcd
//
//  Created by Ірина Зеліско on 17.01.2023.
//

import Foundation
import UIKit

final class ImageCache{
    
    private let imageCache = NSCache<AnyObject, AnyObject>()
    
    func cache(image: UIImage, forKey key: String) {
        imageCache.setObject(image, forKey: key as AnyObject)
    }
    
    func image(forKey key: String) -> UIImage? {
        return imageCache.object(forKey: key as AnyObject) as? UIImage
    }
    
    }

