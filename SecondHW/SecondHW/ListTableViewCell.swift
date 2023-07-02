//
//  ListTableViewCell.swift
//  SecondHW
//
//  Created by Dmitry on 02.07.2023.
//

import UIKit

struct ListTableViewData {
    var title: String
    var image: UIImage
}

final class ListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        titleLable.backgroundColor = .systemCyan
        titleLable.layer.cornerRadius = 15
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLable = nil
        logoImageView = nil
    }
    
    
    func setUp(_ data: ListTableViewData) {
        titleLable.text = data.title
        logoImageView.image = data.image
    }
    
    
}
