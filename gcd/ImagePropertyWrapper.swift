//
//  ImagePropertyWrapper.swift
//  gcd
//
//  Created by Ірина Зеліско on 01.02.2023.
//

import UIKit


 @propertyWrapper
struct ImagePropertyWrapper {
     var minHeight: CGFloat = 50
     var maxHeight: CGFloat = 350
     
    var wrappedValue : CGFloat {
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
    
