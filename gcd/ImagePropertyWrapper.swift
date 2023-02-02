//
//  ImagePropertyWrapper.swift
//  gcd
//
//  Created by Ірина Зеліско on 01.02.2023.
//

import UIKit

 @propertyWrapper
struct ImagePropertyWrapper {
    private let minHeight: CGFloat = 50
    private let maxHeight: CGFloat = 350
    

    var wrappedValue: CGFloat {
        didSet{
            if wrappedValue < minHeight {
                wrappedValue = minHeight
            }
            if wrappedValue > maxHeight {
                wrappedValue = maxHeight
            }
        }
    }
}
    
