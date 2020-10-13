//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by Андрей on 07.10.2020.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullName: String { get }
    var age: String { get }
}
