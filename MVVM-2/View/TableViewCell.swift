//
//  TableViewCell.swift
//  MVVM-2
//
//  Created by Андрей on 07.10.2020.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cell: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fillAgeLabel: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            
            fullNameLabel.text = viewModel.fullName
            fillAgeLabel.text = viewModel.age
        }
    }
}
