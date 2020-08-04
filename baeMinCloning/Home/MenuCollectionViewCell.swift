//
//  MenuCollectionViewCell.swift
//  baeMinCloning
//
//  Created by Ji Chang Hyun on 2020/08/04.
//  Copyright © 2020 Nigostarr. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var menuThumbnail: UIImageView!
    @IBOutlet weak var menuTitle: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        menuThumbnail.layer.cornerRadius = 4
    }
    
//    func updateUI(item: Track?) {
//        // TODO: 곡정보 표시하기
//
//    }
}
