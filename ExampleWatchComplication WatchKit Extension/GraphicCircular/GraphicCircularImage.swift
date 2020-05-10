//
//  GraphicCircularImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicCircularImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "kumonosu94")!)
                
        let circularTemplate = CLKComplicationTemplateGraphicCircularImage()
        circularTemplate.imageProvider = imageProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
