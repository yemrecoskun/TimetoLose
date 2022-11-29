//
//  ProcessCircleView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import SwiftUI

struct ProcessCircleView: View {
    var lineWidth : CGFloat = 0.0
    var percentage : CGFloat = 0.0
    var percentageColor : Color = Color.brandOrange
    init(lineWidth: CGFloat, percentage: CGFloat, percentageColor: Color) {
        self.lineWidth = lineWidth
        self.percentage = percentage
        self.percentageColor = percentageColor
    }
    var body: some View {
        ZStack {
            Circle().stroke(style: .init(lineWidth: lineWidth,lineCap: .round,lineJoin: .round)).fill(Color.lightGrey)
            Circle().trim(from: 0, to: percentage).stroke(style: .init(lineWidth: lineWidth, lineCap: .round,lineJoin: .round)).fill(percentageColor).rotationEffect(.init(degrees: -90))
        }
    }
}
