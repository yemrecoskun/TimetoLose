//
//  ProfileView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 3.12.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                ComponentLabelHeader(text: "Streak\n1\nDay",
                                     textColor: .brandOrange)
                Spacer()
                Image(systemName: "person.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .frame(width: 50,height: 50)
                    .padding()
                    .background(Color.brandOrange)
                    .cornerRadius(20)
                    .shadow(radius: 3)
                Spacer()
                ComponentLabelHeader(text: "Progress\n1 kg\nkgs lost",
                                     textColor: .brandOrange)
                Spacer()
            }
            ComponentLabelHeader(text: "Ahmet Yasin",
                                 textColor: .brandOrange).padding(.trailing)
            ScrollView(showsIndicators: false) {
                buttonView(textValue: "Logout")
                buttonView(textValue: "Settings")
                buttonView(textValue: "Profile Features Settings")
                buttonView(textValue: "Meal List")
                buttonView(textValue: "Reminders")
                buttonView(textValue: "Privacy Policy")
                buttonView(textValue: "İnvite Friends")
                buttonView(textValue: "Send Feedback")
                buttonView(textValue: "Rate us on App Store")
                buttonView(textValue: "Buy Premium")
                //buttonView(textValue: "Medical Resources")
            }
            Spacer()
        }.padding(.horizontal,8)
    }
    
    func buttonView(textValue: String) -> some View {
        Button(action: {
            
        }) {
            VStack {
                HStack {
                    ComponentLabelBody(text: textValue,
                                       font: .bodyRegularBold ,
                                       textColor: .brandOrange)
                    Spacer()
                    ZStack {
                        ComponentLabelBody(text: ">",font: .bodyLarge, textColor: .brandOrange)
                        Circle().stroke(Color.brandOrange,lineWidth: 1).frame(width: 22,height: 22)
                    }.padding(1)
                }
                Divider()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
