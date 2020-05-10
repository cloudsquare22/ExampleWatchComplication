//
//  ModularLargeColumns.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ModularLargeColumns {
    static func create() -> CLKComplicationTimelineEntry {
        let imageR1Provider = CLKImageProvider(onePieceImage: UIImage(named: "book28")!)
        let imageR2Provider = CLKImageProvider(onePieceImage: UIImage(named: "thermometer28")!)
        let imageR3Provider = CLKImageProvider(onePieceImage: UIImage(named: "soccer28")!)
        let textR1C1Provider = CLKSimpleTextProvider(text: "R1C1")
        let textR1C2Provider = CLKSimpleTextProvider(text: "R1C2")
        let textR2C1Provider = CLKSimpleTextProvider(text: "R2C1")
        let textR2C2Provider = CLKSimpleTextProvider(text: "R2C2")
        let textR3C1Provider = CLKSimpleTextProvider(text: "R3C1")
        let textR3C2Provider = CLKSimpleTextProvider(text: "R3C2")
        
        let modularTemplate = CLKComplicationTemplateModularLargeColumns()
        modularTemplate.row1ImageProvider = imageR1Provider
        modularTemplate.row1Column1TextProvider = textR1C1Provider
        modularTemplate.row1Column2TextProvider = textR1C2Provider
        modularTemplate.row2ImageProvider = imageR2Provider
        modularTemplate.row2Column1TextProvider = textR2C1Provider
        modularTemplate.row2Column2TextProvider = textR2C2Provider
        modularTemplate.row3ImageProvider = imageR3Provider
        modularTemplate.row3Column1TextProvider = textR3C1Provider
        modularTemplate.row3Column2TextProvider = textR3C2Provider
        modularTemplate.column2Alignment = .leading
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularTemplate)
    }
}
