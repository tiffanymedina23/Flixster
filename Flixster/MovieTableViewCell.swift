//
//  MovieTableViewCell.swift
//  Flixster
//
//  Created by Tiffany Medina on 9/10/20.
//  Copyright © 2020 tiffanymedina23. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var SynopsisLabel: UILabel!
    @IBOutlet weak var PosterView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
