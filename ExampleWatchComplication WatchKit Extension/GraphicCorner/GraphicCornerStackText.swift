//
//  GraphicCornerStackText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicCornerStackText {
    static func create() -> CLKComplicationTimelineEntry {
        let outerTextProvider = CLKSimpleTextProvider(text: "Outer")
        outerTextProvider.tintColor = UIColor.white
        let innerTextProvider = CLKSimpleTextProvider(text: "Inner")
        innerTextProvider.tintColor = UIColor.orange
        
        let cornerTemplate = CLKComplicationTemplateGraphicCornerStackText()
        cornerTemplate.outerTextProvider = outerTextProvider
        cornerTemplate.innerTextProvider = innerTextProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: cornerTemplate)
    }
}
