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
            ("Sun", 450),
            ("Mon", 600),
            ("Tue", 750),
            ("Wed", 650),
            ("Thu", 200),
            ("Fri", FridayIUArraySum),
            ("Sat", 0),
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


//
////var FridayIUArray: [Double] = []
////var FridayIUArraySum: Double = 0.0
//var sundayIUArraySum: Double = 0.0
//var mondayIUArraySum: Double = 0.0
//var tuesdayIUArraySum: Double = 0.0
//var wednesdayIUArraySum: Double = 0.0
//var thursdayIUArraySum: Double = 0.0
//var fridayIUArraySum: Double = 0.0
//var saturdayIUArraySum: Double = 0.0
//
//
//
//    let dayOfWeekArray = [1, 2, 3, 4, 5, 6, 7]
//
////    "Sunday", "Monday", "Tuesday", "Thursday", "Friday", "Saturday"
//
//    let specificDayOfWeekArray: [Double] = [
//        sundayIUArraySum,
//        mondayIUArraySum,
//        tuesdayIUArraySum,
//        wednesdayIUArraySum,
//        thursdayIUArraySum,
//        FridayIUArraySum,
//        saturdayIUArraySum
//    ]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
////        if dayOfWeekArray[index] == dayOfWeek {
////            FridayIUArray.append(vitD)
////            FridayIUArraySum = FridayIUArray.reduce(0,+)
//////            print("This is Fridays Total IU \(FridayIUArraySum)")
//
//        }
//    }
//

