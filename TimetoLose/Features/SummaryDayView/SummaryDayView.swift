//
//  SummaryDayView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//
import SwiftUI

struct SummaryDayView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ComponentLabelHeader(text: AppText.getText(.summaryDayTitle),textColor: .appColor).padding(10)
            HStack {
                ZStack {
                    ProcessCircleView(lineWidth: 12, percentage: 0.98, percentageColor: .darkPurple)
                    ProcessCircleView(lineWidth: 12, percentage: 0.3, percentageColor: .darkPing).padding(18)
                    ProcessCircleView(lineWidth: 12, percentage: 0.7, percentageColor: .darkYellow).padding(36)
                    ProcessCircleView(lineWidth: 12, percentage: 0.5, percentageColor: .lightYellow).padding(54)
                    ProcessCircleView(lineWidth: 12, percentage: 0.2, percentageColor: .appColor).padding(72)
                }.padding(2)
                VStack(alignment: .leading) {
                    ComponentLabelBody(text: "Alınan",textColor: .black)
                    ComponentLabelBody(text: "1800 kCal",textColor: .darkPurple)
                    ComponentLabelBody(text: "Yakılan",textColor: .black)
                    ComponentLabelBody(text: "2000 kCal",textColor: .darkPing)
                    ComponentLabelBody(text: "BMI",textColor: .black)
                    ComponentLabelBody(text: "%20,4",textColor: .darkYellow)
                    ComponentLabelBody(text: "Sleep",textColor: .black)
                    ComponentLabelBody(text: "8h 20m",textColor: .lightYellow)
                    ComponentLabelBody(text: "Water Intake",textColor: .black)
                    ComponentLabelBody(text: "4 liters",textColor: .appColor)
                }.padding(20).background(Color.white).cornerRadius(22).shadow(radius: 3)
            }
        }.padding(10).background(Color.white).cornerRadius(22).shadow(radius: 13)
    }
}

struct SummaryDayView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryDayView()
    }
}
