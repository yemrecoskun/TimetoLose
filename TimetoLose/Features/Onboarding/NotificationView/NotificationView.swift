//
//  NotificationView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 5.12.2022.
//

import SwiftUI

struct NotificationView: View {
    @State private var isAllowButtonDisabled = false
    @State private var isMaybeLaterButtonDisabled = false
    private let buttonWidth = UIScreen.screenWidth * 0.8
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ComponentLabelHeader(text: AppText.NotificationView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.NotificationView.body, font: .bodyRegular, textColor: .brandOrange)
                VStack(alignment: .leading, spacing: .mediumPoint) {
                    HStack {
                        ComponentLabelBody(text: AppText.NotificationView.notificationTitle, font: .bodyRegularBold, textColor: .white)
                        Spacer()
                        ComponentLabelBody(text: AppText.NotificationView.now, font: .bodySmall, textColor: .white)
                    }
                    ComponentLabelBody(text: AppText.NotificationView.userName, font: .bodyPrimaryMedium, textColor: .white)
                    ComponentLabelBody(text: AppText.NotificationView.notificationBody, font: .bodyPrimaryMedium, textColor: .white, textAlignment: .leading)
                }
                .padding()
                .frame(width: buttonWidth)
                .background(RoundedRectangle(cornerRadius: .regularPoint).fill(Color.brandOrange))
                Spacer()
                ComponentPrimaryButton(title: AppText.NotificationView.allowNotificaton, titleColor: .white, cornerRadius: .doubleLargePoint, width: buttonWidth, isDisabled: $isAllowButtonDisabled, action: allowNotificationButtonTapped)
                ComponentLabelButton(title: AppText.NotificationView.maybeLater, font: .bodyRegular, titleColor: .brandOrange, action: maybeLaterButtonTapped)
            }
        }
    }
    private func allowNotificationButtonTapped() {
    }

    private func maybeLaterButtonTapped() {
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
