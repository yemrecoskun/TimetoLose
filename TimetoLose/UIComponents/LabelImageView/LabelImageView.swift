//
//  LabelImageView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 29.11.2022.
//

import SwiftUI

struct LabelImageView: View {
    var body: some View {
        HStack {
            AppIcon.getIcon(.app)?
                .resizable()
                .frame(width: 60,height: 60)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                ComponentLabelHeader(text: "Mercimek Çorbası",textColor: .brandOrange)
                ComponentLabelBody(text: "Description Description Description Description Description Description ",textColor: .black)
            }
        }.padding(10).background(Color.white).cornerRadius(22).shadow(radius: 2)
    }
}

struct LabelImageView_Previews: PreviewProvider {
    static var previews: some View {
        LabelImageView()
    }
}
