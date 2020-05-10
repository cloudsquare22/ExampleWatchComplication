//
//  GraphicCircularOpenGaugeRangeText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicCircularOpenGaugeRangeText {
    static func create() -> CLKComplicationTimelineEntry {
        let weatherColors = [UIColor.cyan, UIColor.yellow, UIColor.red]
        let weatherColorLocations = [0.0, 0.5, 1.0]
        let weatherGaugeProvider = CLKSimpleGaugeProvider(style: .ring,
                                                          gaugeColors: weatherColors,
                                                          gaugeColorLocations: weatherColorLocations as [NSNumber],
                                                          fillFraction: 0.4)
        let centerTextProvider = CLKSimpleTextProvider(text: "xyz")
        let lowTempText = CLKSimpleTextProvider(text: "52")
        lowTempText.tintColor = UIColor.cyan
        let highTempText = CLKSimpleTextProvider(text: "89")
        highTempText.tintColor = UIColor.red
        
        let circularTemplate = CLKComplicationTemplateGraphicCircularOpenGaugeRangeText()
        circularTemplate.gaugeProvider = weatherGaugeProvider
        circularTemplate.centerTextProvider = centerTextProvider
        circularTemplate.leadingTextProvider = lowTempText
        circularTemplate.trailingTextProvider = highTempText
        
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
