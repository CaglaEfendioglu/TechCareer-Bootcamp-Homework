//
//  CollectionViewCell.swift
//  Odev6
//
//  Created by Cagla Efendioglu on 7.10.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    var indexPath: IndexPath?
}
