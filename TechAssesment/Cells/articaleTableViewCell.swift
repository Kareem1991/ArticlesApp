//
//  articaleTableViewCell.swift
//  TechAssesment
//
//  Created by Kareem on 6/14/20.
//  Copyright © 2020 Kareem. All rights reserved.
//

import UIKit

class articaleTableViewCell: UITableViewCell {

    //MARK:- @IBOutlet
    @IBOutlet weak var articaleTitleLabel: UILabel!
    @IBOutlet weak var byLineLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var publishDateLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(articale:Results) {
        self.articaleTitleLabel.text = articale.title
        self.byLineLabel.text = articale.byLine
        self.sourceLabel.text = articale.source
        self.publishDateLabel.text = articale.publishedDate
    }
}
