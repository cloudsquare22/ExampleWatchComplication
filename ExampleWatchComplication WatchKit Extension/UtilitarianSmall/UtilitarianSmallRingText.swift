//
//  UtilitarianSmallRingText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class UtilitarianSmallRingText {
    static func create() -> CLKComplicationTimelineEntry {
        let textProvider = CLKSimpleTextProvider(text: "xyz")
        
        let utilitarianTemplate = CLKComplicationTemplateUtilitarianSmallRingText()
        utilitarianTemplate.textProvider = textProvider
        utilitarianTemplate.fillFraction = 0.9
        utilitarianTemplate.ringStyle = .closed
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: utilitarianTemplate)
    }
}
