//
//  TableViewModelType.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 09.02.2021.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows : Int {get}
    var profiles : [Profile] {get}
}
