//
//  File.swift
//  CustomNotificationView
//
//  Created by Sreekanth Iragam Reddy on 4/2/18.
//  Copyright © 2018 Sreekanth Iragam Reddy. All rights reserved.
//

import Foundation
import UIKit

class NotificationManager {
    let rootViewController: NotificationViewController
    let notificationWindow: NotificationWindow
    static let shared = NotificationManager()

    private init() {
      rootViewController = NotificationViewController()
      rootViewController.message = "Great News Baby"
        notificationWindow = NotificationWindow(frame: (UIApplication.shared.keyWindow?.frame)!)
      notificationWindow.rootViewController = rootViewController
    }

    func showNotification() {

        UIView.animate(withDuration: 0.3, delay: 0.6, options: [.curveEaseInOut], animations: {
            self.notificationWindow.isHidden = false
            self.rootViewController.showNotificationNew()
        }) { (success) in

        }

        let time: DispatchTime = DispatchTime.now() + .seconds(5)
        DispatchQueue.main.asyncAfter(deadline: time) {
            self.hideNotificationView()
            self.notificationWindow.isHidden = true
        }

    }

    func hideNotificationView() {
        UIView.animate(withDuration: 1, delay: 0.3, options: [.curveEaseOut], animations: {
            self.rootViewController.hideNotificationView()
        }, completion: nil)

    }

}

class NotificationWindow: UIWindow {
    override init(frame: CGRect) {
        super.init(frame: frame)
        isHidden = true
        windowLevel = UIWindowLevelAlert + 1
        backgroundColor = UIColor.clear
        isUserInteractionEnabled = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
