//
//  CircularSmallRingText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class CircularSmallRingText {
    static func cretae() -> CLKComplicationTimelineEntry {
        let textProvider = CLKSimpleTextProvider(text: "Text")
        
        let circularTemplate = CLKComplicationTemplateCircularSmallRingText()
        circularTemplate.textProvider = textProvider
        circularTemplate.ringStyle = .open
        circularTemplate.fillFraction = 0.9
        circularTemplate.tintColor = UIColor.red

       return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
