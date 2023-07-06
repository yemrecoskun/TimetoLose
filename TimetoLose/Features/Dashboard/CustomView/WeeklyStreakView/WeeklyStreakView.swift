//
//  WeeklyStreakView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 28.11.2022.
//

import SwiftUI

struct WeeklyStreakView: View {
    var circleSize: CGFloat = 24
    var body: some View {
        VStack {
            ComponentLabelHeader(text: "Weekly Streak",textColor: .brandOrange).padding(4)
            HStack {
                Spacer()
                VStack {
                    Circle().frame(width: circleSize,height: circleSize).foregroundColor(.success)
                    ComponentLabelHeader(text: "Tue",textColor: .success)
                }
                Spacer()
                VStack {
                    Circle().frame(width: circleSize,height: circleSize).foregroundColor(.failed)
                    ComponentLabelHeader(text: "Wed",textColor: .failed)
                }
                Group {
                    Spacer()
                    VStack {
                        Circle().frame(width: circleSize,height: circleSize).foregroundColor(.success)
                        ComponentLabelHeader(text: "Thu",textColor: .success)
                    }
                    Spacer()
                    VStack {
                        Circle().frame(width: circleSize,height: circleSize).foregroundColor(.brandOrange)
                        ComponentLabelHeader(text: "Sat",textColor: .brandOrange)
                    }
                    Spacer()
                    VStack {
                        Circle().stroke(style: .init(lineWidth: 1,lineCap: .round,lineJoin: .round)).fill(Color.brandOrange).frame(width: circleSize,height: circleSize)
                        ComponentLabelHeader(text: "Sun",textColor: .brandOrange)
                    }
                    Spacer()
                    VStack {
                        Circle().stroke(style: .init(lineWidth: 1,lineCap: .round,lineJoin: .round)).fill(Color.brandOrange).frame(width: 24,height: 24)
                        ComponentLabelHeader(text: "Mon",textColor: .brandOrange)
                    }
                    Spacer()
                }
            }
        }.padding(1).background(.white).cornerRadius(20).shadow(radius: 2)
    }
}

struct WeeklyStreakView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyStreakView()
    }
}
