//
//  LabelButtonView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 2.12.2022.
//


import SwiftUI

struct WaterView: View {
    
    @State var picker =  "Bardak"
    var pickers = [ "Bardak", "Litre" ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ComponentLabelHeader(text: "Su",textColor: .brandOrange)
                ComponentLabelBody(text: "0/10 Bardak",textColor: .black)
            }
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

struct WaterView_Previews: PreviewProvider {
    static var previews: some View {
        WaterView()
    }
}
