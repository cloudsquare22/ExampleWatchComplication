//
//  CircularSmallRingImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class CircularSmallRingImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "questionnaire48")!)

        let circularTemplate = CLKComplicationTemplateCircularSmallRingImage()
        circularTemplate.imageProvider = imageProvider
        circularTemplate.ringStyle = .closed
        circularTemplate.fillFraction = 0.7
        
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
