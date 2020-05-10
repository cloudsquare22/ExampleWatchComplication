//
//  ModularSmallStackImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ModularSmallStackImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "book64x34")!)
        let textProvider = CLKSimpleTextProvider(text: "Text")
        
        let modularTemplate = CLKComplicationTemplateModularSmallStackImage()
        modularTemplate.line1ImageProvider = imageProvider
        modularTemplate.line2TextProvider = textProvider
        modularTemplate.highlightLine2 = false

        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularTemplate)
    }
}
