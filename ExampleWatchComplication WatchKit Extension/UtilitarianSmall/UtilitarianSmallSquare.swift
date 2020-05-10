//
//  UtilitarianSmallSquare.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class UtilitarianSmallSquare {
    static func create() -> CLKComplicationTimelineEntry {
        let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "book50")!)
        
        let utilitarianTemplate = CLKComplicationTemplateUtilitarianSmallSquare()
        utilitarianTemplate.imageProvider = imageProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: utilitarianTemplate)
    }
}
