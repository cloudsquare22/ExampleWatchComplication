//
//  ModularSmallRingText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ModularSmallRingText {
    static func create() -> CLKComplicationTimelineEntry {
        let textProvider = CLKSimpleTextProvider(text: "xyz")
                
        let modularTemplate = CLKComplicationTemplateModularSmallRingText()
        modularTemplate.fillFraction = 0.9
        modularTemplate.ringStyle = .closed
        modularTemplate.textProvider = textProvider

        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularTemplate)
    }
}
