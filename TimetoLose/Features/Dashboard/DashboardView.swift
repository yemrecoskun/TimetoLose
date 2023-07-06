//
//  DashboardView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import SwiftUI


struct DashboardView: View {
    @FetchRequest(sortDescriptors: []) var entity: FetchedResults<Entity>
    
    let topInset: CGFloat = 4
    let horizontalInset: CGFloat = 8
    var body: some View {
        ScrollView(showsIndicators: false) {
                VStack {
                    WeeklyStreakView().padding(.horizontal,horizontalInset).padding(.top,topInset)
                    SummaryDayView().padding(.horizontal,horizontalInset).padding(.top,topInset)
                    CaloriesStatusView().padding(.horizontal,horizontalInset).padding(.top,topInset)
                    WaterView().padding(.horizontal,horizontalInset).padding(.top,topInset)
                    WeeklyStatusView().padding(.horizontal,horizontalInset).padding(.top,topInset)
                    FoodRecipesView().padding(.horizontal,horizontalInset).padding(.top,topInset)
                    Spacer()
                }.padding(.top,1)
        }.id("scrollView")
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
