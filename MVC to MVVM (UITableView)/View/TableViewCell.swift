//
//  TableViewCell.swift
//  MVC to MVVM (UITableView)
//
//  Created by Helga on 09.02.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var fullName: UILabel!
    
    @IBOutlet weak var age: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    weak var viewModel : TableViewCellViewModelType?{
        willSet(viewModel){
            guard let viewModel = viewModel else { return }
            fullName.text = viewModel.fullName
            age.text = viewModel.age
        }
    }

}
