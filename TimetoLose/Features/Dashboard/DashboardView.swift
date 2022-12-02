//
//  DashboardView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
            VStack {
                Spacer()
                ScrollView {
                    WeeklyStreakView().padding(.horizontal,16).padding(.top,5)
                    SummaryDayView().padding(.horizontal,16).padding(.top,5)
                    WeeklyStatusView().padding(.horizontal,16).padding(.top,5)
                    FoodRecipesView().padding(.horizontal,16).padding(.top,5)
                }.padding(.top,5)
                Spacer()
            }.background(Color.background)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
