//
//  ExtraLargeStackImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ExtraLargeStackImage {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "goodwill192x102")!)
        let textProvider = CLKSimpleTextProvider(text: "Text")
        
        let extraLargeTemplate = CLKComplicationTemplateExtraLargeStackImage()
        extraLargeTemplate.highlightLine2 = false
        extraLargeTemplate.line1ImageProvider = imageProvider
        extraLargeTemplate.line2TextProvider = textProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: extraLargeTemplate)
    }
}
