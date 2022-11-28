//
//  AppIcon.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import Foundation
import SwiftUI

struct AppIcon {
    
    enum Name: String {
        case app = "app"
        case notification = "notification"
        case profile = "profile"
        case home = "home"
        case measure = "measure"
}
    
    static func getIcon(_ name: Name,
                    _ color: Color? = nil,
                        _ renderingMode: Image.TemplateRenderingMode = .original) -> Image? {
        var image = Image(name.rawValue).renderingMode(renderingMode)
        if let color = color {
            //image = image.tint(color)
        }
        return image
    }
}
