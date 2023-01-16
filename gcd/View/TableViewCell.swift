//
//  TableViewCell.swift
//  gcd
//
//  Created by Ірина Зеліско on 11.01.2023.
//

import UIKit

final class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: CustomImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
