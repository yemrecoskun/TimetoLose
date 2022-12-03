//
//  BodyMeasureView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 3.12.2022.
//

import SwiftUI

struct BodyMeasureView: View {
    var body: some View {
        VStack {
            VStack {
                keyValueText(key: "Boy", value: "185")
                keyValueText(key: "Kilo", value: "82")
                keyValueText(key: "BMI", value: "%20")
                keyValueText(key: "Yağ Kütlesi", value: "%10")
                keyValueText(key: "Kas Kütlesi", value: "%5")
            }.padding().background(Color.brandOrange).cornerRadius(20).padding(.horizontal,10)
            
            VStack {
                HStack {
                    VStack {
                        ComponentLabelBody(text: "19.07.2022 tarihinde girilmiş ölçüler", textColor: .white)
                        keyView("0.0")
                        keyView("0.0")
                        keyView("0.0")
                        keyView("0.0")
                        keyView("0.0")
                        keyView("0.0")
                        keyView("0.0")
                        keyView("0.0")
                    }
                    AppIcon.getIcon(.body)
                    VStack {
                        ComponentLabelBody(text: "Vücut ölçülerinizi cm cinsinden giriniz", textColor: .white)
                        keyView("Boy")
                        keyView("Omuz")
                        keyView("Göğüs")
                        keyView("Kol")
                        keyView("Bel")
                        keyView("Basen")
                        keyView("Bacak")
                        keyView("Kilo")
                    }
                }
                
            }.padding(8).background(Color.brandOrange).cornerRadius(20).padding(.horizontal,10)
        }
    }
    
    func keyView(_ value: String) -> some View {
        ComponentLabelBody(text: value, textColor: .white).padding(5).frame(width:100).background(Color.grayText).cornerRadius(10)
    }
    func keyValueText(key: String, value: String) -> some View {
        HStack {
            ComponentLabelBody(text: key, textColor: .white)
            Spacer()
            ComponentLabelBody(text: value, textColor: .white)
        }
    }
}

struct BodyMeasureView_Previews: PreviewProvider {
    static var previews: some View {
        BodyMeasureView()
    }
}
