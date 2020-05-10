//
//  UtilitarianSmallRingImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class UtilitarianSmallRingImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "soccer32")!)
        
        let utilitarianTemplate = CLKComplicationTemplateUtilitarianSmallRingImage()
        utilitarianTemplate.imageProvider = imageProvider
        utilitarianTemplate.fillFraction = 0.8
        utilitarianTemplate.ringStyle = .closed
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: utilitarianTemplate)
    }
}
