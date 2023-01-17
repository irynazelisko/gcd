//
//  ViewModel.swift
//  gcd
//
//  Created by Ірина Зеліско on 16.01.2023.
//

import Foundation
import UIKit

protocol ViewModelProtocol {
    func getImages() -> [Image]
    func getImageByIndex(index: Int) -> Image
    func numberOrRows() -> Int
}

class ViewModel: ViewModelProtocol{
    
    var imagesArray: [Image] = []
   
    func getImages() -> [Image] {
        let img = Image(image: "")
        imagesArray = img.makeImages()
        return imagesArray
    }
    
    func getImageByIndex(index: Int) -> Image {
        return self.imagesArray[index]
        
    }
    func numberOrRows() -> Int {
        return self.imagesArray.count
    }
}

