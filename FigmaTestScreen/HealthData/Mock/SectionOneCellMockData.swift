//
//  SectionOneCellMockData.swift
//  FigmaTestScreen
//
//  Created by Andrey on 07/10/2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import Foundation

struct SectionOneCellMockData {
    var data: [HealthDataSectionOneCellData] = []
    
    init() {
        
        let  template = [HealthDataSectionOneCellData(labelText: "Body Measurements", iconImage: "ic_body"),
                         HealthDataSectionOneCellData(labelText: "Health Records", iconImage: "ic_health"),
                         HealthDataSectionOneCellData(labelText: "Heart", iconImage: "ic_heart"),
                         HealthDataSectionOneCellData(labelText: "Reproductive Health", iconImage: "ic_reproductive"),
                         HealthDataSectionOneCellData(labelText: "Results", iconImage: "ic_results")]
        
        self.data.append(contentsOf: template)
        self.data.append(contentsOf: template)
        self.data.append(contentsOf: template)
        self.data.append(contentsOf: template)
        self.data.append(contentsOf: template)
    }
}
