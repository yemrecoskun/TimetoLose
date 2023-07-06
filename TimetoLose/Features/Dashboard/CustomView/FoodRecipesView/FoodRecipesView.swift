//
//  FoodRecipesView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 29.11.2022.
//

import SwiftUI

struct FoodRecipesView: View {
    @State var picker =  "Vegetarian"
    var pickers = [ "Vegetarian", "Vegan" ]
    var body: some View {
        VStack {
            HStack {
                ComponentLabelHeader(text: "Yemek Tarifleri",textColor: .brandOrange)
                Spacer()
                Picker("", selection: $picker) {
                    ForEach(pickers, id: \.self) {
                        Text($0)
                    }
                }.padding(5)
                    .frame(width: UIScreen.screenWidth*0.4)
                    .background(Color.brandOrange)
                    .cornerRadius(20)
                    .accentColor(.white)
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
