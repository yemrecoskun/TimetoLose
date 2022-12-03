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
                ScrollView {
                    WeeklyStreakView().padding(.horizontal,8).padding(.top,5)
                    SummaryDayView().padding(.horizontal,8).padding(.top,5)
                    CaloriesStatusView().padding(.horizontal,8).padding(.top,5)
                    WaterView().padding(.horizontal,8).padding(.top,5)
                    WeeklyStatusView().padding(.horizontal,8).padding(.top,5)
                    FoodRecipesView().padding(.horizontal,8).padding(.top,5)
                    Spacer()
                }.padding(.top,5)
            }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
