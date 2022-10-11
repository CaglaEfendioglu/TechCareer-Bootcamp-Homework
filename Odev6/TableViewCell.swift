//
//  TableViewCell.swift
//  Odev6
//
//  Created by Cagla Efendioglu on 7.10.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var tableViewImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
