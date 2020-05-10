//
//  GraphicRectangularTextGauge.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicRectangularTextGauge {
    static func create() -> CLKComplicationTimelineEntry {
        let number = 1234
        let headerProvider = CLKTextProvider(format: "header %d xyz", number)
        let body1Provider = CLKTextProvider(format: "body1 %d body1", number)
        let imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "kumonosu54")!)
        
        let weatherGaugeProvider = CLKSimpleGaugeProvider(style: .ring, gaugeColor: .green, fillFraction: 0.4)
                
        let rectangularTemplate = CLKComplicationTemplateGraphicRectangularTextGauge()
        rectangularTemplate.headerImageProvider = imageProvider
        rectangularTemplate.headerTextProvider = headerProvider
        rectangularTemplate.body1TextProvider = body1Provider
        rectangularTemplate.gaugeProvider = weatherGaugeProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: rectangularTemplate)
    }
}
