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
            Spacer()
            AppIcon.getIcon(.app)?
                .resizable()
                .frame(width: 40,height: 40)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(AppText.getText(.welcome))
                Spacer()
                Text("Ahmet Yasin").bold()
            }
            Spacer()
            AppIcon.getIcon(.notification)?.padding(6).background(Color.appColor).shadow(color: .white, radius: 1)
            Spacer()
            AppIcon.getIcon(.profile)?.padding(6).background(Color.appColor).shadow(color: .white, radius: 1)
            Spacer()
        }.padding()
            .background(Color.appColor)
            .foregroundColor(Color.white)
            .cornerRadius(22)
            .frame(height: 10).shadow(radius: 5)
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
