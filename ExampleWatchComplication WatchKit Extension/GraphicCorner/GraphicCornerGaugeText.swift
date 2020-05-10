//
//  GraphicCornerGaugeText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicCornerGaugeText {
    static func create() -> CLKComplicationTimelineEntry {
        let lowTempText = CLKSimpleTextProvider(text: "52")
        lowTempText.tintColor = UIColor.cyan
        let highTempText = CLKSimpleTextProvider(text: "89")
        highTempText.tintColor = UIColor.red
        let currentTempText = CLKSimpleTextProvider(text: "72")
        
        let weatherColors = [UIColor.cyan, UIColor.yellow, UIColor.red]
        let weatherColorLocations = [0.0, 0.6, 1.0]
        let weatherGaugeProvider = CLKSimpleGaugeProvider(style: .ring,
                                                          gaugeColors: weatherColors,
                                                          gaugeColorLocations: weatherColorLocations as [NSNumber],
                                                          fillFraction: 0.7)

        let cornerTemplate = CLKComplicationTemplateGraphicCornerGaugeText()
        cornerTemplate.gaugeProvider = weatherGaugeProvider
        cornerTemplate.leadingTextProvider = lowTempText
        cornerTemplate.trailingTextProvider = highTempText
        cornerTemplate.outerTextProvider = currentTempText
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: cornerTemplate)
    }
}
