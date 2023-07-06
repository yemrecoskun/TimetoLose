//
//  RoundedCorners.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 29.11.2022.
//

import SwiftUI

//.clipShape(RoundedCornersShape(corners: [.topLeft,.topRight], radius: 20))
struct RoundedCornersShape: Shape {
   let corners: UIRectCorner
   let radius: CGFloat
   
   func path(in rect: CGRect) -> Path {
       let path = UIBezierPath(roundedRect: rect,
                               byRoundingCorners: corners,
                               cornerRadii: CGSize(width: radius, height: radius))
       return Path(path.cgPath)
   }
}
