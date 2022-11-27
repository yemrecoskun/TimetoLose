//
//  ProfileView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        HStack {
            AppIcon.getIcon(.app)?
                .resizable()
                .frame(width: 40,height: 40)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(AppText.getText(.welcome))
                Text("Ahmet Yasin").bold()
            }
            AppIcon.getIcon(.notification)
            AppIcon.getIcon(.profile)
        }.padding()
            .background(Color.appColor)
            .foregroundColor(Color.white)
            .shadow(radius: 10)
            .cornerRadius(22)
    }
}

