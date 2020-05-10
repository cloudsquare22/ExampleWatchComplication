//
//  ExtraLargeRingImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ExtraLargeRingImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "goodwill146")!)
        
        let extraLargeTemplate = CLKComplicationTemplateExtraLargeRingImage()
        extraLargeTemplate.imageProvider = imageProvider
        extraLargeTemplate.ringStyle = .closed
        extraLargeTemplate.fillFraction = 0.5
        
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: extraLargeTemplate)
    }
}
