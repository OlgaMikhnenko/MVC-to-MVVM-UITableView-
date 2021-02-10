//
//  DetailViewController.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 10.02.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var Label : UILabel!
    var viewModel : DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else {
            return
        }
        
        self.Label.text = viewModel.description
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else { return }
            self.Label.text = string
        }
        
        delay (delay: 3) {
            self.viewModel?.age.value = "some new value"
        }
        
    }
    
    private func delay (delay : Double, closure : @escaping () -> () ) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }
   
}
