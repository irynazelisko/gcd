//
//  ViewController.swift
//  gcd
//
//  Created by Ірина Зеліско on 11.01.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    var viewModel = ViewModel()
   

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.imagesArray = viewModel.getImages()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 250
        tableView.rowHeight = UITableView.automaticDimension

    }
   
}

// MARK: - Delegate, DataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        let image = viewModel.getImageByIndex(index: indexPath.row)
        
        guard let imageCell = cell as? TableViewCell else {
            return cell
        }
        
        let tableCellViewModel = TableCellViewModel(imagePath: image.image)
        imageCell.viewModel = tableCellViewModel
       
        return imageCell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOrRows()
        
    }
   
}




