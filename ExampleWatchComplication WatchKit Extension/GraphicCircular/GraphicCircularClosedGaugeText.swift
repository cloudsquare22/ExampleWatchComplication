//
//  GraphicCircularClosedGaugeText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicCircularClosedGaugeText {
    static func create() -> CLKComplicationTimelineEntry {
        let weatherColors = [UIColor.cyan, UIColor.yellow, UIColor.red]
        let weatherColorLocations = [0.0, 0.3, 1.0]
        let weatherGaugeProvider = CLKSimpleGaugeProvider(style: .ring,
                                                          gaugeColors: weatherColors,
                                                          gaugeColorLocations: weatherColorLocations as [NSNumber],
                                                          fillFraction: 0.6)
        let textProvider = CLKSimpleTextProvider(text: "xyz")
        textProvider.tintColor = UIColor.gray
        
        let circularTemplate = CLKComplicationTemplateGraphicCircularClosedGaugeText()
        circularTemplate.gaugeProvider = weatherGaugeProvider
        circularTemplate.centerTextProvider = textProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
