//
//  NameAndTrackCell.swift
//  NewTableViewApp
//
//  Created by Jason on 3/5/17.
//  Copyright © 2017 Jason Mendez. All rights reserved.
//

import UIKit

class NameAndTrackCell: UITableViewCell {

    var name: String = "" {
        didSet {
            if (name != oldValue) {
                nameLabel.text = name
            }
        }
    }
    var track: String = "" {
        didSet {
            if (track != oldValue) {
                trackLabel.text = track
            }
        }
    }
    var nameLabel: UILabel!
    var trackLabel: UILabel!
    
    override init(style:UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let nameLabelRect = CGRect(x: 0, y: 5, width: 70, height: 15)
        let nameMarker = UILabel(frame: nameLabelRect)
        nameMarker.textAlignment = NSTextAlignment.right
        nameMarker.text = "Name:"
        nameMarker.font = UIFont.boldSystemFont(ofSize: 12)
        contentView.addSubview(nameMarker)
        
        
        let trackLabelRect = CGRect(x: 0, y: 26, width: 70, height: 15)
        let trackMarker = UILabel(frame: trackLabelRect)
        trackMarker.textAlignment = NSTextAlignment.right
        trackMarker.text = "Track:"
        trackMarker.font = UIFont.boldSystemFont(ofSize: 12)
        contentView.addSubview(trackMarker)
        
        let nameValueRect = CGRect(x: 80, y: 5, width: 200, height: 15)
        nameLabel = UILabel(frame: nameValueRect)
        contentView.addSubview(nameLabel)
        
        let trackValueRect = CGRect(x: 80, y: 25, width: 200, height: 15)
        trackLabel = UILabel(frame: trackValueRect)
        contentView.addSubview(trackLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
