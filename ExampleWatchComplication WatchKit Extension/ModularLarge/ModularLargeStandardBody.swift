//
//  ModularLargeStandardBody.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ModularLargeStandardBody {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "book28")!)
        let textHeaderProvider = CLKSimpleTextProvider(text: "Header")
        let textBody1Provider = CLKSimpleTextProvider(text: "Text Text Text Text")
        let textBody2Provider = CLKSimpleTextProvider(text: "xyz ___ xyz ___ xyz")
        
        let modularTemplate = CLKComplicationTemplateModularLargeStandardBody()
        modularTemplate.headerImageProvider = imageProvider
        modularTemplate.headerTextProvider = textHeaderProvider
        modularTemplate.body1TextProvider = textBody1Provider
        modularTemplate.body2TextProvider = textBody2Provider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularTemplate)
    }
}
