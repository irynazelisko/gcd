//
//  ViewController.swift
//  gcd
//
//  Created by Ірина Зеліско on 11.01.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    var imagesArray: [Image] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let img = Image(image: "")
        imagesArray = img.makeImages()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - Delegate, DataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        let image = imagesArray[indexPath.row]
        
        guard let imageCell = cell as? TableViewCell else {
            return cell
        }
        
        if let url = URL(string: image.image) {
            imageCell.imgView.loadImage(form: url)
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}



