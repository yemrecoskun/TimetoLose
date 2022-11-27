//
//  GoalView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 27.11.2022.
//

import SwiftUI

struct GoalView: View {
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ComponentLabelHeader(text: AppText.GoalView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.GoalView.body, font: .bodyRegular, textColor: .brandOrange)
            }
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
