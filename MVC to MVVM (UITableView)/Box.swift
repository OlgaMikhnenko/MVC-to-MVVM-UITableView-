//
//  Box.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 10.02.2021.
//

import Foundation

class Box <T> {
    
    typealias Listner = (T) -> ()
    
    var listner : Listner?
    
    var value: T {
        didSet {
            listner?(value)
        }
    }
    
    func bind (listner : @escaping Listner) {
        self.listner = listner
        listner(value)
    }
    
    init (_ value : T) {
        self.value = value
    }
}
