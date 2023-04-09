//
//  CaloriesStatusView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 2.12.2022.
//

import SwiftUI

struct CaloriesStatusView: View {
    var calories : [Double] = [ 100, 150, 100]
    var body: some View {
        
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    ComponentLabelHeader(text: "Kalori Takibi", textColor: .brandOrange)
                    ComponentLabelBody(text: "0/2000 kCal",textColor: .black)
                }
                PieChartRow(data: calories, backgroundColor: .white, accentColor: .brandOrange, showValue: Binding.constant(false), currentValue: Binding.constant(0))
                    .frame(width: 50, height: 50)
                VStack(alignment: .trailing) {
                    ComponentLabelBody(text: "Karbonhidrat 100gr",textColor: .red)
                    ComponentLabelBody(text: "Protein 150gr",textColor: .green)
                    ComponentLabelBody(text: "Yağ 100gr",textColor: .yellow)
                }
            }
            LabelButtonView()
            LabelButtonView()
            LabelButtonView()
        }.padding(10).background(.white).cornerRadius(20).shadow(radius: 2)
    }
}

struct CaloriesStatusView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesStatusView()
    }
}
