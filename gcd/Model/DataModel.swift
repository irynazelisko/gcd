//
//  DataModel.swift
//  gcd
//
//  Created by Ірина Зеліско on 11.01.2023.
//

import Foundation
import UIKit

let image1 = "https://cdn.pixabay.com/photo/2015/12/01/20/28/forest-1072828_1280.jpg"
let image2 = "https://cdn.pixabay.com/photo/2015/07/05/10/18/tree-832079_1280.jpg"
let image3 = "https://cdn.pixabay.com/photo/2016/10/22/17/46/mountains-1761292_1280.jpg"
let image4 = "https://cdn.pixabay.com/photo/2015/01/28/23/35/hills-615429_1280.jpg"
let image5 = "https://cdn.pixabay.com/photo/2016/03/27/22/22/fox-1284512_1280.jpg"
let image6 = "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg"
let image7 = "https://cdn.pixabay.com/photo/2017/02/19/15/28/sunset-2080072_1280.jpg"
let image8 = "https://cdn.pixabay.com/photo/2017/01/16/19/54/ireland-1985088_1280.jpg"
let image9 = "https://cdn.pixabay.com/photo/2017/11/15/13/27/river-2951997_1280.jpg"
let image10 = "https://cdn.pixabay.com/photo/2018/10/19/12/14/train-3758523_1280.jpg"
let image11 = "https://cdn.pixabay.com/photo/2019/10/30/16/19/fox-4589927_1280.jpg"
let image12 = "https://cdn.pixabay.com/photo/2013/02/21/19/12/lumber-84678_1280.jpg"
let image13 = "https://cdn.pixabay.com/photo/2017/08/24/03/41/starry-sky-2675322_1280.jpg"
let image14 = "https://cdn.pixabay.com/photo/2018/03/02/18/29/snow-3193865_1280.jpg"
let image15 = "https://cdn.pixabay.com/photo/2016/06/20/03/21/rainbow-1467988_1280.jpg"
let image16 = "https://cdn.pixabay.com/photo/2014/11/21/03/26/neist-point-540119_1280.jpg"
let image17 = "https://cdn.pixabay.com/photo/2016/04/18/10/17/wolf-1336229_1280.jpg"
let image18 = "https://cdn.pixabay.com/photo/2012/12/13/06/39/snow-69661_1280.jpg"
let image19 = "https://cdn.pixabay.com/photo/2016/11/26/23/45/dog-1861839_1280.jpg"
let image20 = "https://cdn.pixabay.com/photo/2014/10/05/06/05/rapeseeds-474558_1280.jpg"


struct Image {
    var image: String
    init(image:String){
        self.image = image
    }
    func makeImages() -> [Image] {
        var images = [Image]()
        images.append(Image(image: image1))
        images.append(Image(image: image2))
        images.append(Image(image: image3))
        images.append(Image(image: image4))
        images.append(Image(image: image5))
        images.append(Image(image: image6))
        images.append(Image(image: image7))
        images.append(Image(image: image8))
        images.append(Image(image: image9))
        images.append(Image(image: image10))
        images.append(Image(image: image11))
        images.append(Image(image: image12))
        images.append(Image(image: image13))
        images.append(Image(image: image14))
        images.append(Image(image: image15))
        images.append(Image(image: image16))
        images.append(Image(image: image17))
        images.append(Image(image: image18))
        images.append(Image(image: image19))
        images.append(Image(image: image20))
        return images
    }
    
}
