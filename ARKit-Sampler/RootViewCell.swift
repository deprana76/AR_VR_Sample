//
//  RootViewCell.swift
//  ARKit-Sampler
//
//

import UIKit

class RootViewCell: UITableViewCell {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func showSample(_ sample: Sample) {
        titleLabel.text  = sample.title
        detailLabel.text = sample.detail
    }
}
