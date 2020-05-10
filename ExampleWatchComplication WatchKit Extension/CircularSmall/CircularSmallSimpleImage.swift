//
//  CircularSmallSimpleImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class CircularSmallSimpleImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "questionnaire48")!)
        
        let circularTemplate = CLKComplicationTemplateCircularSmallSimpleImage()
        circularTemplate.imageProvider = imageProvider
        
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
