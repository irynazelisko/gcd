//
//  TableViewCell.swift
//  gcd
//
//  Created by Ірина Зеліско on 11.01.2023.
//

import UIKit

final class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    static let cellIdentifier = "reusableCell"
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imgView.image = nil
    }
   
}
