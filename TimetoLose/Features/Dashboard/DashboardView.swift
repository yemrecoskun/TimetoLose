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
                ProfileView().padding(.horizontal,16).padding(.vertical,30)
                Spacer()
                ScrollView {
                    SummaryDayView().padding(.horizontal,16).padding(.vertical,16)
                }
                Spacer()
                BottomMenuView()
            }.background(Color.background)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
