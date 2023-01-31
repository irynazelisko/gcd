//
//  TableCellViewModel.swift
//  gcd
//
//  Created by Ірина Зеліско on 25.01.2023.
//

import Foundation
import UIKit

final class TableCellViewModel  {
    let imagePath : String
    
    init(imagePath: String) {
        self.imagePath = imagePath
    }
    
    func loadImage(completion: @escaping (UIImage?) -> ()) {
        guard let imageUrl = URL(string: imagePath) else {
            return
        }
        ImageHelper.loadImage(from: imageUrl, completion: completion)
    }
}
