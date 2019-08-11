//
//  VideoListTableViewCell.swift
//  VideoSearchApp
//
//  Created by 大嶺舜 on 2019/08/11.
//  Copyright © 2019 大嶺舜. All rights reserved.
//
import UIKit
import SDWebImage

class VideoListTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    
    func configure(item: VideoDataEntity) {
        titleLabel.text = item.title
        videoImage.sd_setImage(with: URL(string: item.imageUrl))
        countLabel.text = "\(item.count)"
    }
    
}
