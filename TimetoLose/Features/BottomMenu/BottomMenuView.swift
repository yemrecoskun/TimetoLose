//
//  BottomBar.swift
//  BottomBar
//
//  Created by Yunus Emre Coşkun
//  Copyright © 2022 Yunus Emre coşkun. All rights reserved.
//
import SwiftUI


public struct BottomBarItem {
    public let icon: Image
    public let title: String
    public let color: Color
    
    public init(icon: Image,
                title: String,
                color: Color){
        self.icon = icon
        self.title = title
        self.color = color
    }
    
    public init(icon: String,
                title: String,
                color: Color) {
        self = BottomBarItem(icon: Image(systemName: icon),
                             title: title,
                             color: color)
    }
}


@resultBuilder
public struct BarBuilder{}


public extension BarBuilder{
    
    
    static func buildBlock(_ items: BottomBarItem...) -> [BottomBarItem]{
        items
    }
    
    
}


public struct BottomBarItemView: View {
    @Binding var selected : Int
    public let index: Int
    public let item: BottomBarItem
    
    public var body: some View {
        HStack {
            item.icon
                .imageScale(.large)
                .foregroundColor(item.color)
                .frame(width: 24,height: 24)
            
            if isSelected {
                Text(item.title)
                    .foregroundColor(item.color)
                    .font(.caption)
                    .fontWeight(.bold)
            }
        }
        .padding()
        .background(
            Capsule()
                .fill(isSelected ? item.color.opacity(0.2) : Color.clear)
                .padding(5)
        )
    }
    
    var isSelected : Bool{
        selected == index
    }
    
}
public struct BottomBar : View {
    
    @State public  var selectedIndex: Int = 0
    public var items = [
        BottomBarItem(icon: "house.fill", title: "Home", color: .lightAppColor),
        BottomBarItem(icon: "lines.measurement.horizontal", title: "Measure", color: .lightAppColor),
        BottomBarItem(icon: "figure.socialdance", title: "Social", color: .lightAppColor),
        BottomBarItem(icon: "person.fill", title: "Profile", color: .lightAppColor)
    ]
    public var selectedItem: BottomBarItem {
        items[selectedIndex]
    }
    
    func itemView(at index: Int) -> some View {
        Button(action: {
            withAnimation { self.selectedIndex = index }
        }) {
            BottomBarItemView(selected: self.$selectedIndex,
                              index: index,
                              item: items[index])
        }
    }
    
    public var body: some View {
        VStack {
            ProfileView().padding(.horizontal,16).padding(.vertical,30)
            switch(selectedIndex) {
                case 0: DashboardView()
                case 1: MeasureView()
                case 2: DashboardView()
                case 3: DashboardView()
            default:
                DashboardView()
            }
            HStack(alignment: .bottom) {
                ForEach(0..<items.count) { index in
                    self.itemView(at: index)
                    
                    if index != self.items.count-1 {
                        Spacer()
                    }
                }
            }.background(.white)
                .animation(.default, value: selectedIndex)
        }.background(Color.background)
    }
}

struct BottomBar_Previews : PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}
