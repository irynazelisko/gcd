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
    
    var viewModel: TableCellViewModel?{
        didSet{
            setUpUI()
        }
    }
    
    func setUpUI() {
        viewModel?.loadImage { [weak self] image in
            DispatchQueue.main.async {
                guard let self = self else{ return }
                self.imgView.image = image
                self.imgView.sizeToFit()
                self.heightConstraint.constant = self.imgView.frame.height
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
 
    override func prepareForReuse() {
        super.prepareForReuse()
        imgView.image = nil
    }
    
  
}
