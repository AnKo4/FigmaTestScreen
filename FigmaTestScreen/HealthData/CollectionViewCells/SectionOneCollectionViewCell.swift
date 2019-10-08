//
//  SectionOneCollectionViewCell.swift
//  FigmaTestScreen
//
//  Created by Andrey on 07/10/2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import UIKit

class SectionOneCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var cellIcon: UIImageView!
    @IBOutlet private weak var label: UILabel!
    
    
    func setupCellContent(data: HealthDataSectionOneCellData) {
        cellIcon.image = UIImage(named: data.iconImage)
        label.text = data.labelText
    }
}

extension SectionOneCollectionViewCell: Reusable {}

extension SectionOneCollectionViewCell: NibLoadable {}
