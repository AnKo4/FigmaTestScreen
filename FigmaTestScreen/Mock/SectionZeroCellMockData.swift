//
//  SectionZeroCellMockData.swift
//  FigmaTestScreen
//
//  Created by Andrey on 07/10/2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import Foundation

struct SectionZeroCellMockData {
    let dict = [0: HealthDataSectionZeroCollectionViewCellData(labelText: "Activity", backgroundImage: "bg_activity"),
                1: HealthDataSectionZeroCollectionViewCellData(labelText: "Mindfulness", backgroundImage: "bg_mindfulness"),
                2: HealthDataSectionZeroCollectionViewCellData(labelText: "Nutrition", backgroundImage: "bg_nutrition"),
                3: HealthDataSectionZeroCollectionViewCellData(labelText: "Sleep", backgroundImage: "bg_sleep")]
    
    var data = [HealthDataSectionZeroCollectionViewCellData]()
    
    init() {
        for key in dict.keys {
            guard let item = dict[key] else { return }
            self.data.append(item)
        }
    }
}
