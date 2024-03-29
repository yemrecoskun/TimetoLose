//
//  TabView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 30.11.2022.
//

import SwiftUI

struct TabViews: View {
    
    public var items = [
        TabBarItem(icon: "house.fill", title: "Home", color: .lightAppColor),
        TabBarItem(icon: "lines.measurement.horizontal", title: "Measure", color: .lightAppColor),
        TabBarItem(icon: "figure.socialdance", title: "Activity", color: .lightAppColor),
        TabBarItem(icon: "person.fill", title: "Profile", color: .lightAppColor)
    ]
    func menuView(at: Int) -> AnyView {
        switch at {
        case 0:
            return AnyView(DashboardView())
        case 1:
            return AnyView(MeasureView())
        case 2:
            return AnyView(ActivityView())
        case 3:
            return AnyView(ProfileView())
        default:
            return AnyView(DashboardView())
        }
    }
    
    func itemView(at index: Int) -> some View {
        TabBarItemView(item: items[index])
    }
    var body: some View {
        
        VStack {
            Spacer()
            ProfileBar().padding(.horizontal,8).padding(.vertical,24)
            TabView {
                ForEach(0..<items.count) { index in
                    menuView(at: index).background(Color.white)
                        .tabItem{
                            self.itemView(at: index)
                        }
                        .tag(index)
                }
            }.onAppear{
                UITabBar.appearance().backgroundColor = UIColor(Color.white)
                UITabBar.appearance().unselectedItemTintColor = UIColor(Color.black.opacity(0.7))
            }.accentColor(.brandOrange)
        }.background(Color.white)
    }
}

struct TabViews_Previews : PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}


public struct TabBarItemView: View {
    public let item : TabBarItem
    
    public var body: some View {
        HStack {
            Image(systemName: item.icon)
                .imageScale(.large)
                .foregroundColor(item.color)
                .frame(width: 24,height: 24)
            Text(item.title)
                .foregroundColor(item.color)
                .font(.caption)
                .fontWeight(.bold)
        }
    }
}

public struct TabBarItem {
    public let icon : String
    public let title: String
    public let color: Color
}
