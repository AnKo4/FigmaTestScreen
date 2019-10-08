//
//  SectionZeroCollectionViewCell.swift
//  FigmaTestScreen
//
//  Created by Andrey on 04/10/2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import UIKit

class SectionZeroCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var background: UIImageView!

    
    func setupCellContent(data: HealthDataSectionZeroCellData) {
        label.text = data.labelText
        background.image = UIImage(named: data.backgroundImage)
    }

}
