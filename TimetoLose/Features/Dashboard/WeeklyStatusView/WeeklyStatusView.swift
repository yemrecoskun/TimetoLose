//
//  WeeklyStatusView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 2.12.2022.
//

import SwiftUI

struct WeeklyStatusView: View {
    @State var picker =  "1.Weekly"
    var pickers = [ "1.Weekly", "2.Weekly" ]
    var days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    var body: some View {
        VStack {
            HStack {
                Spacer()
                ComponentLabelHeader(text: "Weekly Status",textColor: .brandOrange)
                Spacer()
                Picker("", selection: $picker) {
                    ForEach(pickers, id: \.self) {
                        Text($0)
                    }
                }.padding(5)
                    .frame(width: UIScreen.screenWidth*0.4)
                    .background(Color.brandOrange)
                    .cornerRadius(20)
                    .accentColor(.white)
                Spacer()
            }
            LineView(data: [86,85,84,82,81], style: Styles.pieChartStyleOne).frame(height: 275)
            HStack {
                Spacer()
                ForEach(0..<7) { index in
                    Spacer()
                    Text(days[index]).foregroundColor(Colors.LegendText)
                }
                Spacer()
            }
            HStack {
                VStack(alignment: .leading) {
                    ComponentLabelBody(text: "Hedef Kilo : 70",textColor: .brandOrange)
                    ComponentLabelBody(text: "Hedefinize 5 hafta kaldı",textColor: .brandOrange)
                }
                Spacer()
                ComponentLabelBody(text: "Aralık \n 25", font: .bodyRegularBold,textColor: .white).padding(12).background(Color.brandOrange).cornerRadius(25)
            }.padding( 12).background(Color.brandOrange.opacity(0.2)).cornerRadius(25)
            
        }.padding(10).background(.white).cornerRadius(20).shadow(radius: 2)
    }
}

struct WeeklyStatusView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyStatusView()
    }
}
