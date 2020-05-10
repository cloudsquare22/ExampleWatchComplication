//
//  CircularSmallStackText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class CircularSmallStackText {
    static func create() -> CLKComplicationTimelineEntry {
        let line1TextProvider = CLKSimpleTextProvider(text: "Text")
        let line2TextProvider = CLKSimpleTextProvider(text: "xyz")
        
        let circularTemplate = CLKComplicationTemplateCircularSmallStackText()
        circularTemplate.line1TextProvider = line1TextProvider
        circularTemplate.line2TextProvider = line2TextProvider
        
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
