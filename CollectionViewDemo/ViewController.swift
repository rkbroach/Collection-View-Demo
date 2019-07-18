//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Rohan Kevin Broach on 6/27/19.
//  Copyright © 2019 rkbroach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var collectionData = ["0🦁", "1🐮", "2🐶", "3🐱", "4🐭", "5🐹", "6🐰", "7🦊", "8🐻", "9🐼", "10🐨", "11🐯"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width  = (view.frame.size.width - 20) / 3 // creates 3 col, with a padding of 10 between each column
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
            layout.itemSize = CGSize(width: width, height: width)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    // Number of Rows to be displayed
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionData.count
    }
    
    // Creates instance of the cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        
        // Update Text Label
        if let label = cell.viewWithTag(100) as? UILabel {
            label.text = collectionData[indexPath.row]
        }
        return cell
    }
    
    // Which item was selected
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    }
}
