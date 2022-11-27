//
//  DashboardView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            VStack{
                ProfileView()
                Spacer()
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
