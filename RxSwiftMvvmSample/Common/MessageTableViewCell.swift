//
//  MessageTableViewCell.swift
//  shareApp
//
//  Created by USER on 2018/05/21.
//  Copyright © 2018年 岡村. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
//    var nameLabel:UILabel!
//    var iconImage:UIImage!
//    var iconImageView:UIImageView!
    var messageLabel:UILabel!
//    var sendDateLable:UILabel!
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:)")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let screenRect = UIScreen.main.bounds
        
        //******** メッセージ
        messageLabel = UILabel()
        messageLabel.frame = CGRect(x:0 ,y:0, width:screenRect.width, height: 20)
        messageLabel.numberOfLines = 0
        messageLabel.lineBreakMode = .byWordWrapping
        contentView.addSubview(messageLabel)
        
        //constraint (ラベルのheightを可変にする為に必要)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: messageLabel, attribute:.top, relatedBy:.equal, toItem:contentView, attribute:.top , multiplier:1, constant:20).isActive = true
        NSLayoutConstraint(item: messageLabel, attribute:.bottomMargin, relatedBy:.equal, toItem:contentView, attribute:.bottomMargin, multiplier:1, constant:0).isActive = true
    }
}
