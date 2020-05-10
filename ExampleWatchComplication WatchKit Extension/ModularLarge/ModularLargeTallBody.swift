//
//  ModularLargeTallBody.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ModularLargeTallBody {
    static func create() -> CLKComplicationTimelineEntry {
        let textHeaderProvider = CLKSimpleTextProvider(text: "Header")
        let textBodyProvider = CLKSimpleTextProvider(text: "Text Text")
        
        let modularTemplate = CLKComplicationTemplateModularLargeTallBody()
        modularTemplate.headerTextProvider = textHeaderProvider
        modularTemplate.bodyTextProvider = textBodyProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularTemplate)
    }
}
