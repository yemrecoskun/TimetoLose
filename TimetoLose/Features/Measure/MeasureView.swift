//
//  MeasureView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 3.12.2022.
//

import SwiftUI

struct MeasureView: View {
    @State public var selectedIndex: Int = 0
    
    public var items = [
        BottomBarItem(icon: "house.fill", title: "Home", color: .lightAppColor),
        BottomBarItem(icon: "lines.measurement.horizontal", title: "Measure", color: .lightAppColor)
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
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.brandOrange)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(Color.grayText)], for: .normal)
        UISegmentedControl.appearance().backgroundColor = .white
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Picker("", selection: $selectedIndex) {
                    Text("Ölçüm").tag(0)
                    Text("Aktivite").tag(1)
                }.padding(.horizontal)
                    .pickerStyle(SegmentedPickerStyle())
               Spacer()
                    switch(selectedIndex) {
                        case 0: BodyMeasureView()
                        case 1: ActivityView()
                        default:
                            DashboardView()
                    }
                Spacer()
            }
         }
    }
}

struct MeasureView_Previews: PreviewProvider {
    static var previews: some View {
        MeasureView()
    }
}
