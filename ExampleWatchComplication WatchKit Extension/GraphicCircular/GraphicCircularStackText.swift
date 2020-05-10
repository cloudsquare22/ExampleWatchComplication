//
//  GraphicCircularStackText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicCircularStackText {
    static func create() -> CLKComplicationTimelineEntry {
        let text1Provider = CLKSimpleTextProvider(text: "xyz")
        let text2Provider = CLKSimpleTextProvider(text: "Text")
        text2Provider.tintColor = UIColor.green
        
        let circularTemplate = CLKComplicationTemplateGraphicCircularStackText()
        circularTemplate.line1TextProvider = text1Provider
        circularTemplate.line2TextProvider = text2Provider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
