//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Андрей on 07.10.2020.
//

import Foundation

protocol TableViewViewModelType {
    var numberOfRows: Int { get }
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForeSelectedRow() -> DetailViewModelType?
    func selectedRow(atIndexPath indexPath: IndexPath)
}
