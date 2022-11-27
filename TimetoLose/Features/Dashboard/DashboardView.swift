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
                SummaryDayView().padding(.horizontal,16).padding(.vertical,16)
                Spacer()
            }.background(Color.background.ignoresSafeArea())
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
