//
//  ModularLargeTable.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ModularLargeTable {
    static func create() -> CLKComplicationTimelineEntry {
        let headerImageProvider = CLKImageProvider(onePieceImage: UIImage(named: "soccer28")!)
        let textHeaderProvider = CLKSimpleTextProvider(text: "Header")
        let textR1C1Provider = CLKSimpleTextProvider(text: "R1C1")
        let textR1C2Provider = CLKSimpleTextProvider(text: "R1C2")
        let textR2C1Provider = CLKSimpleTextProvider(text: "R2C1")
        let textR2C2Provider = CLKSimpleTextProvider(text: "R2C2")
        
        let modularTemplate = CLKComplicationTemplateModularLargeTable()
        modularTemplate.headerImageProvider = headerImageProvider
        modularTemplate.headerTextProvider = textHeaderProvider
        modularTemplate.row1Column1TextProvider = textR1C1Provider
        modularTemplate.row1Column2TextProvider = textR1C2Provider
        modularTemplate.row2Column1TextProvider = textR2C1Provider
        modularTemplate.row2Column2TextProvider = textR2C2Provider
        modularTemplate.column2Alignment = .leading
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularTemplate)
    }
}
