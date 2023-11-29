//
//  DashboardView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import SwiftUI
import RealmSwift

struct DashboardView: View {
    @FetchRequest(sortDescriptors: []) var entity: FetchedResults<Entity>
    @ObservedResults(OnboardingModel.self) var onboardingModels
    
    let topInset: CGFloat = 4
    let horizontalInset: CGFloat = 8
    var body: some View {
        ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(onboardingModels) { onboardingModel in
                        Text("\(onboardingModel.genderInput)")
                        Text("\(onboardingModel.ageInput)")
                        Text("\(onboardingModel.heightInputCM)")
                        Text("\(onboardingModel.measureTypeHeightInput)")
                        Text("\(onboardingModel.currentWeightInput)")
                        Text("\(onboardingModel.measureTypeWeightInput)")
                        Text("\(onboardingModel.targetWeightInput)")
                        Text("\(onboardingModel.activityLevelInput)")
                    }
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
