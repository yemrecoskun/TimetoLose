//
//  BottomMenuView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import SwiftUI

struct BottomMenuView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Spacer()
                Button(action: {
                    
                }) { AppIcon.getIcon(.home)?.resizable().frame(width: 24,height: 24).padding()
                }
                Spacer()
                Button(action: {
                    
                }) {
                    AppIcon.getIcon(.measure)?.resizable().frame(width: 24,height: 24).foregroundColor(.appColor).padding()
                }
                Spacer()
                Button(action: {
                    
                }) {
                    AppIcon.getIcon(.app)?.resizable().frame(width: 24,height: 24).padding()
                }
                Spacer()
                Button(action: {
                    
                }) {
                    AppIcon.getIcon(.profile)?.resizable().frame(width: 24,height: 24).foregroundColor(.appColor).padding()
                }
                Spacer()
            }.padding(2).background(Color.white).cornerRadius(4)
        }
    }
}

struct BottomMenuView_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenuView()
    }
}
