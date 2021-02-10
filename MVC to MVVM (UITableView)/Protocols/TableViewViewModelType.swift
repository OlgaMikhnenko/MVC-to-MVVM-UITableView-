//
//  TableViewModelType.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 09.02.2021.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int?
    var profiles : [Profile] {get}
    func cellViewModel (forIndexPath indexPath : IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow () -> DetailViewModelType?
    func selectedRow(atIndexPath indexPath : IndexPath) 
}
