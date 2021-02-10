//
//  ViewModel.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 09.02.2021.
//

import Foundation



class ViewModel : TableViewViewModelType{

    private var selectedIndexPath : IndexPath?

    var profiles = [
        Profile(name: "Helga", secondName: "Brigth", age: 23),
        Profile(name: "John", secondName: "Smith", age: 24),
        Profile(name: "Helen", secondName: "Kolli", age: 18)
    ]
    
    func numberOfRows() -> Int? {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return tableViewCellViewModel(profile : profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else {
            return nil
        }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectedRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
}
