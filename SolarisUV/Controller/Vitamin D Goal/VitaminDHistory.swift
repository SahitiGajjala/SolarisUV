////
////  VitaminDHistory.swift
////  SolarisUV
////
////  Created by Sahiti  on 5/31/19.
////  Copyright © 2019 Sahiti Gajjala. All rights reserved.
////
//
import UIKit
import SwiftCharts

//var SundayIUArray: [Double] = []
//var MondayIUArray: [Double] = []
//var TuesdayIUArray: [Double] = []
//var WednesdayIUArray: [Double] = []
//var ThursdayIUArray: [Double] = []
//var FridayIUArray: [Double] = []
//var SaturdayIUArray: [Double] = []
//
//
//var sundayIUArraySum: Double = 0.0
//var mondayIUArraySum: Double = 0.0
//var tuesdayIUArraySum: Double = 0.0
//var wednesdayIUArraySum: Double = 0.0
//var thursdayIUArraySum: Double = 0.0
//var fridayIUArraySum: Double = 0.0
//var saturdayIUArraySum: Double = 0.0

class VitaminDHistory: UIViewController {

    var chartView: BarsChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let labelSettings = ChartLabelSettings(fontColor: UIColor.colorPaletteDeepBlue)
//        let xModel = ChartAxisModel(lineColor: UIColor.colorPaletteDeepBlue)

        
        let chartConfig = BarsChartConfig(
            valsAxisConfig: ChartAxisConfig(from: 0, to: 1000, by: 100)
        )
        let frame = CGRect(x: 0, y: 270, width: self.view.frame.width, height: 500)
        let chart = BarsChart(
            
            frame: frame,
            chartConfig: chartConfig,
            xTitle: "Days",
            yTitle: "IU",
            bars: [
            ("Sun", sundayIUArraySum),
            ("Mon", mondayIUArraySum),
            ("Tue", tuesdayIUArraySum),
            ("Wed", wednesdayIUArraySum),
            ("Thu", thursdayIUArraySum),
            ("Fri", fridayIUArraySum),
            ("Sat", saturdayIUArraySum),
            ],
            color: UIColor.colorPalettecoral,
            barWidth: 15
        
        )
        
        self.view.addSubview(chart.view)
        self.chartView = chart
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

