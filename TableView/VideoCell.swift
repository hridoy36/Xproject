//
//  VideoCell.swift
//  TableView
//
//  Created by Lab on 1/6/20.
//  Copyright © 2020 Lab. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    func setVideo(video: Video){
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
