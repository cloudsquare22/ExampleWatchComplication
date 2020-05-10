//
//  ExtraLargeColumnsText.swift
//  ExampleWatchComplication WatchKit Extension
//
//  Created by Shin Inaba on 2020/05/10.
//  Copyright © 2020 shi-n. All rights reserved.
//

import ClockKit

class ExtraLargeColumnsText {
    static func create() -> CLKComplicationTimelineEntry {
        let textR1C1Provider = CLKSimpleTextProvider(text: "11")
        let textR1C2Provider = CLKSimpleTextProvider(text: "12")
        let textR2C1Provider = CLKSimpleTextProvider(text: "21")
        let textR2C2Provider = CLKSimpleTextProvider(text: "22")
        
        let extraLargeTemplate = CLKComplicationTemplateExtraLargeColumnsText()
        extraLargeTemplate.column2Alignment = .leading
        extraLargeTemplate.highlightColumn2 = false
        extraLargeTemplate.row1Column1TextProvider = textR1C1Provider
        extraLargeTemplate.row1Column2TextProvider = textR1C2Provider
        extraLargeTemplate.row2Column1TextProvider = textR2C1Provider
        extraLargeTemplate.row2Column2TextProvider = textR2C2Provider

        return CLKComplicationTimelineEntry(date: Date(), complicationTemplate: extraLargeTemplate)
    }
}
