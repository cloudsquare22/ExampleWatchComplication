//
//  ComplicationController.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/08.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit


class ComplicationController: NSObject, CLKComplicationDataSource {
    
    // MARK: - Timeline Configuration
    
    func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void) {
        handler([.forward, .backward])
    }
    
    func getTimelineStartDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void) {
        handler(.showOnLockScreen)
    }
    
    // MARK: - Timeline Population
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        /*
         Please uncomment the Complication line you want to use.
         */
        switch complication.family {
        case .circularSmall:
            // Image
//            let entry = CircularSmallRingImage.create()
//            let entry = CircularSmallSimpleImage.create()
//            let entry = CircularSmallStackImage.create()
            
            // Text
//            let entry = CircularSmallRingText.cretae()
//            let entry = CircularSmallSimpleText.create()
            let entry = CircularSmallStackText.create()
            
            handler(entry)
        case .extraLarge:
            // Image
//            let entry = ExtraLargeRingImage.create()
//            let entry = ExtraLargeSimpleImage.create()
//            let entry = ExtraLargeStackImage.create()
            
            // Text
//            let entry = ExtraLargeColumnsText.create()
//            let entry = ExtraLargeRingText.create()
//            let entry = ExtraLargeSimpleText.create()
            let entry = ExtraLargeStackText.create()
            
            handler(entry)
        case .modularSmall:
            // Image
//            let entry = ModularSmallRingImage.create()
//            let entry = ModularSmallSimpleImage.create()
//            let entry = ModularSmallStackImage.create()

            // Text
//            let entry = ModularSmallColumnsText.create()
//            let entry = ModularSmallRingText.create()
//            let entry = ModularSmallSimpleText.create()
            let entry = ModularSmallStackText.create()
            
            handler(entry)
        case .modularLarge:
            // Body
//            let entry = ModularLargeStandardBody.create()
//            let entry = ModularLargeTallBody.create()
            
            // Table
//            let entry = ModularLargeColumns.create()
            let entry = ModularLargeTable.create()

            handler(entry)
        case .utilitarianSmall:
//            let entry = UtilitarianSmallFlat.create()
//            let entry = UtilitarianSmallRingImage.create()
//            let entry = UtilitarianSmallRingText.create()
            let entry = UtilitarianSmallSquare.create()

            handler(entry)
        case .utilitarianLarge:
            let entry = UtilitarianLargeFlat.create()
            
            handler(entry)
        case .graphicCorner:
//            let entry = GraphicCornerGaugeText.create()
//            let entry = GraphicCornerStackText.create()
//            let entry = GraphicCornerCircularImage.create()
//            let entry = GraphicCornerGaugeImage.create()
            let entry = GraphicCornerTextImage.create()

            handler(entry)
        case .graphicCircular:
//            let entry = GraphicCircularImage.create()
//            let entry = GraphicCircularStackImage.create()
//            let entry = GraphicCircularStackText.create()
//            let entry = GraphicCircularClosedGaugeImage.create()
//            let entry = GraphicCircularOpenGaugeImage.create()
//            let entry = GraphicCircularClosedGaugeText.create()
//            let entry = GraphicCircularOpenGaugeSimpleText.create()
            let entry = GraphicCircularOpenGaugeRangeText.create()
            
            handler(entry)
        case .graphicBezel:
            let entry = GraphicBezelCircularText.create()
            
            handler(entry)
        case .graphicRectangular:
//            let entry = GraphicRectangularStandardBody.create()
//            let entry = GraphicRectangularTextGauge.create()
            let entry = GraphicRectangularLargeImage.create()
            
            handler(entry)
        default:
            handler(nil)
        }
    }
    
    func getTimelineEntries(for complication: CLKComplication, before date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries prior to the given date
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries after to the given date
        handler(nil)
    }
    
    // MARK: - Placeholder Templates
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
        // This method will be called once per supported complication, and the results will be cached
        handler(nil)
    }
    
}
