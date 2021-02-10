//
//  TableViewController.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 09.02.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel : TableViewViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.numberOfRows() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell,
              let viewModel = viewModel
        else {
            return UITableViewCell()
        }
        
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        tableViewCell.viewModel = cellViewModel
        

        return tableViewCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        guard let viewModel = viewModel else {
            return
        }
        viewModel.selectedRow(atIndexPath: indexPath)
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    override func prepare (for segue : UIStoryboardSegue, sender : Any?){
        guard let identifier = segue.identifier,
              let viewModel = viewModel
        else {
            return
        }
        if identifier == "detailSegue" {
            if let dvc = segue.destination as? DetailViewController {
                dvc.viewModel = viewModel.viewModelForSelectedRow()
            }
        }
    }


}
