//
//  ImageHelper.swift
//  gcd
//
//  Created by Ірина Зеліско on 25.01.2023.
//

import UIKit

final class ImageHelper {
    
    static func loadImage(from url: URL, completion: @escaping (UIImage?) -> ()) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data , let newImage = UIImage(data: data) {
                completion(newImage)
            } else {
                print("couldn't load image from url \(url)")
                return
            }
        }
        task.resume()
    }
    
}
