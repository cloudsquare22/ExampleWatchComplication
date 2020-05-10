//
//  ModularSmallRingImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ModularSmallRingImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "questionnaire42")!)
        
        let modularTemplate = CLKComplicationTemplateModularSmallRingImage()
        modularTemplate.ringStyle = .closed
        modularTemplate.fillFraction = 0.7
        modularTemplate.imageProvider = imageProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularTemplate)
    }
}
