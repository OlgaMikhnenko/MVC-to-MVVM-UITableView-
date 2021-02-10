//
//  DetailViewModelType.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 10.02.2021.
//

import Foundation

protocol DetailViewModelType {
    var description : String { get }
    var age : Box<String?> {get}
}
