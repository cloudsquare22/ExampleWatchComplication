//
//  UtilitarianSmallFlat.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class UtilitarianSmallFlat {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "soccer22")!)
        let textProvider = CLKSimpleTextProvider(text: "Text")
        
        let utilitarianTemplate = CLKComplicationTemplateUtilitarianSmallFlat()
        utilitarianTemplate.imageProvider = imageProvider
        utilitarianTemplate.textProvider = textProvider

        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: utilitarianTemplate)
    }
}
