//
//  ExtraLargeRingText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ExtraLargeRingText {
    static func create() -> CLKComplicationTimelineEntry {
        let textProvider = CLKSimpleTextProvider(text: "Text")
        
        let extraLargeTemplate = CLKComplicationTemplateExtraLargeRingText()
        extraLargeTemplate.ringStyle = .open
        extraLargeTemplate.fillFraction = 0.7
        extraLargeTemplate.textProvider = textProvider

        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: extraLargeTemplate)
    }
}
