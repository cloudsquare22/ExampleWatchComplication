//
//  GraphicCircularOpenGaugeImage.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicCircularOpenGaugeImage {
    static func create() -> CLKComplicationTimelineEntry {
        let weatherColors = [UIColor.cyan, UIColor.yellow, UIColor.red]
        let weatherColorLocations = [0.0, 0.3, 1.0]
        let weatherGaugeProvider = CLKSimpleGaugeProvider(style: .ring,
                                                          gaugeColors: weatherColors,
                                                          gaugeColorLocations: weatherColorLocations as [NSNumber],
                                                          fillFraction: 0.8)
        let textProvider = CLKSimpleTextProvider(text: "xyz")
        textProvider.tintColor = UIColor.purple
        let imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "kumonosu48")!)
        
        let circularTemplate = CLKComplicationTemplateGraphicCircularOpenGaugeImage()
        circularTemplate.gaugeProvider = weatherGaugeProvider
        circularTemplate.centerTextProvider = textProvider
        circularTemplate.bottomImageProvider = imageProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
