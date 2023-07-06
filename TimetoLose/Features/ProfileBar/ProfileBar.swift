//
//  ProfileBar.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import SwiftUI

struct ProfileBar: View {
    var userName: String
    init() {
        self.userName = UserDefaultsManager.key.userName.get() ?? ""
    }
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
                Text(userName).bold()
            }
            Spacer()
            AppIcon.getIcon(.notification)?.padding(8).background(Color.brandOrange).border(.white,width: 0.4)
            Spacer()
        }.padding(8)
            .background(Color.brandOrange)
            .foregroundColor(Color.white)
            .cornerRadius(22)
            .frame(height: 10).shadow(radius: 2)
    }
}



struct ProfileBar_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBar()
    }
}
