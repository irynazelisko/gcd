//
//  ImageHelper.swift
//  gcd
//
//  Created by Ірина Зеліско on 25.01.2023.
//

import Foundation
import UIKit

protocol ImageHelperProtocol {
    func loadImage(from url: URL, completion: @escaping (UIImage?, URLResponse?, Error?) -> ())
}

class ImageHelper: ImageHelperProtocol {
    func loadImage(from url: URL, completion: @escaping (UIImage?, URLResponse?, Error?) -> ()) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data , let newImage = UIImage(data: data) {
                completion(UIImage(data: data), response, error)
                } else {
                    print("couldn't load image from url \(url)")
                    return
                }
            }
        task.resume()
        }

}
