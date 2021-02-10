//
//  DetailViewModel.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 10.02.2021.
//

import Foundation

class DetailViewModel : DetailViewModelType {
    
    
    private var profile : Profile
    
    var description: String {
        return String (describing: "\(profile.name) \(profile.secondName) is \(profile.age)!")
    }
    
    init(profile : Profile) {
        self.profile = profile
    }
    
    var age: Box<String?> = Box(nil)
}
