//
//  ModularSmallStackText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ModularSmallStackText {
    static func create() -> CLKComplicationTimelineEntry {
        let textLine1Provider = CLKSimpleTextProvider(text: "Text")
        let textLine2Provider = CLKSimpleTextProvider(text: "xyz")
                
        let modularTemplate = CLKComplicationTemplateModularSmallStackText()
        modularTemplate.line1TextProvider = textLine1Provider
        modularTemplate.line2TextProvider = textLine2Provider
        modularTemplate.highlightLine2 = false
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularTemplate)
    }
}
