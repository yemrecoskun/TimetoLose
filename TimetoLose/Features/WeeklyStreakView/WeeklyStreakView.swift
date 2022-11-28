//
//  WeeklyStreakView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 28.11.2022.
//

import SwiftUI

struct WeeklyStreakView: View {
    var body: some View {
        VStack {
            ComponentLabelHeader(text: "Weekly Streak",textColor: .appColor)
            HStack {
                Spacer()
                VStack {
                    Circle().frame(width: 32,height: 32).foregroundColor(.success)
                    ComponentLabelHeader(text: "Tue",textColor: .success)
                }
                VStack {
                    Circle().frame(width: 32,height: 32).foregroundColor(.failed)
                    ComponentLabelHeader(text: "Wed",textColor: .failed)
                }
                VStack {
                    Circle().frame(width: 32,height: 32).foregroundColor(.success)
                    ComponentLabelHeader(text: "Thu",textColor: .success)
                }
                VStack {
                    Circle().frame(width: 32,height: 32).foregroundColor(.appColor)
                    ComponentLabelHeader(text: "Sat",textColor: .appColor)
                }
                VStack {
                    Circle().stroke(style: .init(lineWidth: 1,lineCap: .round,lineJoin: .round)).fill(Color.appColor).frame(width: 32,height: 32)
                    ComponentLabelHeader(text: "Sun",textColor: .appColor)
                }
                VStack {
                    Circle().stroke(style: .init(lineWidth: 1,lineCap: .round,lineJoin: .round)).fill(Color.appColor).frame(width: 32,height: 32)
                    ComponentLabelHeader(text: "Mon",textColor: .appColor)
                }
                Spacer()
            }
        }.padding(1).background(.white).cornerRadius(20).shadow(radius: 2)
    }
}

struct WeeklyStreakView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyStreakView()
    }
}
