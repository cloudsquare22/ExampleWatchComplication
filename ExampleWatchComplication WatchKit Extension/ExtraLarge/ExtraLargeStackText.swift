//
//  ExtraLargeStackText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ExtraLargeStackText {
    static func create() -> CLKComplicationTimelineEntry {
        let textLine1Provider = CLKSimpleTextProvider(text: "Text")
        let textLine2Provider = CLKSimpleTextProvider(text: "xyz")
        
        let extraLargeTemplate = CLKComplicationTemplateExtraLargeStackText()
        extraLargeTemplate.highlightLine2 = false
        extraLargeTemplate.line1TextProvider = textLine1Provider
        extraLargeTemplate.line2TextProvider = textLine2Provider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: extraLargeTemplate)
    }
}
