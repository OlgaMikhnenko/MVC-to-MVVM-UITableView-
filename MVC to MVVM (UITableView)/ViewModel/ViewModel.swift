//
//  ViewModel.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 09.02.2021.
//

import Foundation



class ViewModel : TableViewModelType{

    var profiles = [
        Profile(name: "Helga", secondName: "Brigth", age: 23),
        Profile(name: "John", secondName: "Smith", age: 24),
        Profile(name: "Helen", secondName: "Kolli", age: 18)
    ]
    
    var numberOfRows: Int {return profiles.count}
}
