//
//  ActivityView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 3.12.2022.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        VStack {
            ScrollView {
                HStack {
                    VStack(alignment: .leading) {
                        ComponentLabelBody(text: "Aktivite Puanınız",textColor: .brandOrange)
                    }
                    Spacer()
                    ComponentLabelBody(text: "100", font: .bodyRegularBold,textColor: .white)
                        .padding(8)
                        .background(Color.brandOrange)
                        .cornerRadius(25)
                }.padding(8)
                    .background(Color.brandOrange.opacity(0.2))
                    .cornerRadius(25)
                    .padding(.horizontal,10)
                HStack {
                    activityView()
                    activitySuccessView()
                }
                HStack {
                    activityView()
                    activityView()
                }
                HStack {
                    activityView()
                    activityView()
                }
                VStack {
                    ComponentLabelHeader(text: "Haftalık",textColor: .brandOrange)
                    HStack {
                        Spacer()
                        ZStack {
                            Circle().frame(width: 32,height: 32).foregroundColor(.yellow)
                            ComponentLabelBody(text: "1",textColor: .white)
                        }
                        ZStack {
                            Circle().frame(width: 32,height: 32).foregroundColor(.yellow)
                            ComponentLabelBody(text: "2",textColor: .white)
                        }
                        ZStack {
                            Circle().frame(width: 32,height: 32).foregroundColor(.yellow)
                            ComponentLabelBody(text: "3",textColor: .white)
                        }
                        ZStack {
                            Circle().frame(width: 32,height: 32).foregroundColor(.yellow)
                            ComponentLabelBody(text: "4",textColor: .white)
                        }
                        ZStack {
                            Circle().frame(width: 32,height: 32).foregroundColor(.brandOrange)
                            ComponentLabelBody(text: "5",textColor: .white)
                        }
                        ZStack {
                            Circle().stroke(style: .init(lineWidth: 1,lineCap: .round,lineJoin: .round)).fill(Color.brandOrange).frame(width: 32,height: 32)
                            ComponentLabelBody(text: "6",textColor: .brandOrange)
                        }
                        ZStack {
                            Circle().stroke(style: .init(lineWidth: 1,lineCap: .round,lineJoin: .round)).fill(Color.brandOrange).frame(width: 32,height: 32)
                            ComponentLabelBody(text: "7",textColor: .brandOrange)
                        }
                        Spacer()
                    }
                }.padding(8).background(.white).cornerRadius(20).shadow(radius: 2).padding(8)
            }
        }.padding(.vertical,10)
    }
    
    func activityView() -> some View {
        VStack {
            ComponentLabelBody(text: "Calories",textColor: .brandOrange)
            ZStack(alignment: .center) {
                ProcessCircleView(lineWidth: 10, percentage: 0.9, percentageColor: .brandOrange)
                ComponentLabelBody(text: "  9000 kCal\n10000 kCal",textColor: .brandOrange)
            }
        }.frame(width: 140,height: 140).padding(8).background(.white).cornerRadius(30).shadow(radius: 1)
    }
    func activitySuccessView() -> some View {
        VStack {
            ComponentLabelBody(text: "Calories",textColor: .white)
            ZStack(alignment: .center) {
                ProcessCircleView(lineWidth: 10, percentage: 0.98, percentageColor: .brandOrange)
                ComponentLabelBody(text: "  9000 kCal\n10000 kCal",textColor: .white)
            }
        }.frame(width: 140,height: 140).padding(8).background(Color.brandOrange).cornerRadius(30).shadow(radius: 1)
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
