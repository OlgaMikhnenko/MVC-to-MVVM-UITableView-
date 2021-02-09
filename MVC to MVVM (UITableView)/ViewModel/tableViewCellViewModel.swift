//
//  TableViewCellViewModel.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 09.02.2021.
//

import Foundation

class tableViewCellViewModel : TableViewCellViewModelType{
    
    private var profile : Profile
    
    var fullName: String {return profile.name + " " + profile.secondName}
    
    var age: String {return String(describing : profile.age)}
    
    init(profile : Profile) {
        self.profile = profile
    }
    
}
