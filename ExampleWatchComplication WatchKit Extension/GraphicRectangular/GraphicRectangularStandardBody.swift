//
//  GraphicRectangularStandardBody.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicRectangularStandardBody {
    static func create() -> CLKComplicationTimelineEntry {
        let number = 1234
        let headerProvider = CLKTextProvider(format: "header %d header", number)
        let body1Provider = CLKTextProvider(format: "body1 %d body1", number)
        let body2Provider = CLKTextProvider(format: "body2 %d body2", number)
        let imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "kumonosu54")!)
        
        let rectangularTemplate = CLKComplicationTemplateGraphicRectangularStandardBody()
        rectangularTemplate.headerTextProvider = headerProvider
        rectangularTemplate.body1TextProvider = body1Provider
        rectangularTemplate.body2TextProvider = body2Provider
        rectangularTemplate.headerImageProvider = imageProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: rectangularTemplate)
    }
}
