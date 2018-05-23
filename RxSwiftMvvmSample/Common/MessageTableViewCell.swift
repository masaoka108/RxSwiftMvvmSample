//
//  MessageTableViewCell.swift
//  shareApp
//
//  Created by USER on 2018/05/21.
//  Copyright © 2018年 岡村. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
    var nameLabel:UILabel!
    var iconImage:UIImage!
    var iconImageView:UIImageView!
    var messageLabel:UILabel!
    var sendDateLable:UILabel!
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:)")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let screenRect = UIScreen.main.bounds
        
        //******** メッセージ
        messageLabel = UILabel()
        messageLabel.frame = CGRect(x:0 ,y:0, width:screenRect.width, height: 15)
        messageLabel.numberOfLines = 0
        messageLabel.lineBreakMode = .byWordWrapping
        contentView.addSubview(messageLabel)
    }
}
