//
//  FoodRecipesView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 29.11.2022.
//

import SwiftUI

struct FoodRecipesView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                ComponentLabelHeader(text: "Yemek Tarifleri",textColor: .appColor)
                Spacer()
                Picker(selection: .constant(1), label: Text("Picker")) {
                    Text("Vegetarian").tag(1)
                    Text("Vegan").tag(2)
                }.padding(5).background(Color.appColor).cornerRadius(20)
                Spacer()
            }
            LabelImageView()
            LabelImageView()
            LabelImageView()
        }.padding().background(.white).cornerRadius(20).shadow(radius: 2)
    }
}

struct FoodRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        FoodRecipesView()
    }
}
