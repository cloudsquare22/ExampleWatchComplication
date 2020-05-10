//
//  ExtraLargeSimpleText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ExtraLargeSimpleText {
    static func create() -> CLKComplicationTimelineEntry {
        let textProvider = CLKSimpleTextProvider(text: "Text")
        
        let extraLargeTemplate = CLKComplicationTemplateExtraLargeSimpleText()
        extraLargeTemplate.textProvider = textProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: extraLargeTemplate)
    }
}
