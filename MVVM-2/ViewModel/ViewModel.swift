//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Андрей on 07.10.2020.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    var profiles = [
        Profile(name: "Johnny", secondName: "Silverhand", age: 56),
        Profile(name: "Judy", secondName: "Alvarez", age: 35),
        Profile(name: "V", secondName: "", age: 36)
    ]
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        
        return TableViewCellViewModel(profile: profile)
    }
    
    var numberOfRows: Int {
        return profiles.count
    }
    
    func viewModelForeSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectedRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
