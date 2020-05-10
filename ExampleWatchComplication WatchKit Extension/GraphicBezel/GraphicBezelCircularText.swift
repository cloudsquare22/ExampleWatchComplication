//
//  GraphicBezelCircularText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicBezelCircularText {
    static func create() -> CLKComplicationTimelineEntry {
        let number = 1234
        let textProvider = CLKTextProvider(format: "TextA %d TextB", number)
        
        let imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "kumonosu94")!)
        let circularTemplate = CLKComplicationTemplateGraphicCircularImage()
        circularTemplate.imageProvider = imageProvider
        
        let bezelTemplate = CLKComplicationTemplateGraphicBezelCircularText()
        bezelTemplate.textProvider = textProvider
        bezelTemplate.circularTemplate = circularTemplate
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: bezelTemplate)
    }
}
