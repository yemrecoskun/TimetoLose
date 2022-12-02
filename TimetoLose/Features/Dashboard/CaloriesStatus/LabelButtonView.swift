//
//  LabelButtonView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 2.12.2022.
//


import SwiftUI

struct LabelButtonView: View {
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ComponentLabelHeader(text: "Kahvaltı",textColor: .brandOrange)
                ComponentLabelBody(text: "0/2000 kCal",textColor: .black)
            }
            Spacer()
            Button(action: {
                
            }) {
                ZStack {
                    ComponentLabelHeader(text: "+",textColor: .brandOrange).cornerRadius(15).shadow(color: .brandOrange, radius: 10)
                    Circle().stroke(Color.brandOrange,lineWidth: 1).frame(width: 20,height: 20)

                }
            }
            
        }.padding()
            .background(Color.white)
            .foregroundColor(Color.white)
            .cornerRadius(22).shadow(radius: 1)
    }
}

struct LabelButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LabelButtonView()
    }
}
