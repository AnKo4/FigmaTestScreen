//
//  SectionZeroCellMockData.swift
//  FigmaTestScreen
//
//  Created by Andrey on 07/10/2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import Foundation

struct SectionZeroCellMockData {
    let dict = [0: HealthDataSectionZeroCellData(labelText: "Activity", backgroundImage: "bg_activity"),
                1: HealthDataSectionZeroCellData(labelText: "Mindfulness", backgroundImage: "bg_mindfulness"),
                2: HealthDataSectionZeroCellData(labelText: "Nutrition", backgroundImage: "bg_nutrition"),
                3: HealthDataSectionZeroCellData(labelText: "Sleep", backgroundImage: "bg_sleep")]
    
    var data = [HealthDataSectionZeroCellData]()
    
    init() {
        for key in dict.keys {
            guard let item = dict[key] else { return }
            self.data.append(item)
        }
    }
}
