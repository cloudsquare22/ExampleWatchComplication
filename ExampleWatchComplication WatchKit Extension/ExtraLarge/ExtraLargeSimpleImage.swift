//
//  ExtraLargeSimpleImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ExtraLargeSimpleImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "goodwill224")!)
        
        let extraLargeTemplate = CLKComplicationTemplateExtraLargeSimpleImage()
        extraLargeTemplate.imageProvider = imageProvider
        
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: extraLargeTemplate)
    }
}
