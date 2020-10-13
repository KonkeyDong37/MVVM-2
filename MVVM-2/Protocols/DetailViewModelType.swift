//
//  DetailViewModelType.swift
//  MVVM-2
//
//  Created by Андрей on 12.10.2020.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
