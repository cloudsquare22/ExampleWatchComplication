//
//  GraphicRectangularLargeImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicRectangularLargeImage {
    static func create() -> CLKComplicationTimelineEntry {
        let number = 1234
        let tectProvider = CLKTextProvider(format: "header %d xyz", number)
        let imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "kumonosu342x108")!)
         
        let rectangularTemplate = CLKComplicationTemplateGraphicRectangularLargeImage()
        rectangularTemplate.textProvider = tectProvider
        rectangularTemplate.imageProvider = imageProvider
         
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: rectangularTemplate)
    }
}
