//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Андрей on 07.10.2020.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    var age: String {
        return "Age: \(profile.age)"
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
