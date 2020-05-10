//
//  GraphicCircularClosedGaugeImage  .swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class GraphicCircularClosedGaugeImage {
    static func create() -> CLKComplicationTimelineEntry {
        let weatherColors = [UIColor.cyan, UIColor.yellow, UIColor.red]
        let weatherColorLocations = [0.0, 0.3, 1.0]
        let weatherGaugeProvider = CLKSimpleGaugeProvider(style: .ring,
                                                          gaugeColors: weatherColors,
                                                          gaugeColorLocations: weatherColorLocations as [NSNumber],
                                                          fillFraction: 1.0)
        let imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "kumonosu32")!)
        
        let circularTemplate = CLKComplicationTemplateGraphicCircularClosedGaugeImage()
        circularTemplate.gaugeProvider = weatherGaugeProvider
        circularTemplate.imageProvider = imageProvider
                
        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: circularTemplate)
    }
}
