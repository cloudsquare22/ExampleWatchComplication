//
//  GraphicCornerTextImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicCornerTextImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "kumonosu44")!)
        let textProvider = CLKSimpleTextProvider(text: "Text")
        
        let cornerTemplate = CLKComplicationTemplateGraphicCornerTextImage()
        cornerTemplate.imageProvider = imageProvider
        cornerTemplate.textProvider = textProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: cornerTemplate)
    }
}
