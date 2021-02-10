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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
