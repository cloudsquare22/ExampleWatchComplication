//
//  CircularSmallStackImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class CircularSmallStackImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "questionnaire38x18")!)
        let textProvider = CLKSimpleTextProvider(text: "Text")
        
        let circularTemplate = CLKComplicationTemplateCircularSmallStackImage()
        circularTemplate.line1ImageProvider = imageProvider
        circularTemplate.line2TextProvider = textProvider
        
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
