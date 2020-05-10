//
//  GraphicCircularStackImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicCircularStackImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "kumonosu62x32")!)
        let textProvider = CLKSimpleTextProvider(text: "Text")
        
        let circularTemplate = CLKComplicationTemplateGraphicCircularStackImage()
        circularTemplate.line1ImageProvider = imageProvider
        circularTemplate.line2TextProvider = textProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
