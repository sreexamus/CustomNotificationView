//
//  NotificationViewController.swift
//  CustomNotificationView
//
//  Created by Sreekanth Iragam Reddy on 4/2/18.
//  Copyright © 2018 Sreekanth Iragam Reddy. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    var messageLabel: UILabel!
    var message: String!
    let uiNotificationView = UIView(frame: .zero)
    var topConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
        // Do any additional setup after loading the view.
    }

    func showNotificationNew() {
        uiNotificationView.alpha = 1
        topConstraint.isActive = false
        topConstraint.isActive = true
        view.layoutIfNeeded()
    }

    func hideNotificationView() {
        topConstraint.isActive = false
        uiNotificationView.alpha = 0
        view.layoutIfNeeded()

    }

    private func commonInit() {
        uiNotificationView.backgroundColor = .red
        uiNotificationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(uiNotificationView)
        topConstraint = uiNotificationView.topAnchor.constraint(equalTo: view.topAnchor)
        let bottomConstraint = uiNotificationView.bottomAnchor.constraint(equalTo: view.topAnchor)
        bottomConstraint.priority = UILayoutPriority(rawValue: 2)
        bottomConstraint.isActive = true
        NSLayoutConstraint.activate([
            uiNotificationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            uiNotificationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            uiNotificationView.heightAnchor.constraint(equalToConstant: 70)
            ])

        messageLabel = UILabel()
        messageLabel.numberOfLines = 0
        messageLabel.text = message
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        uiNotificationView.addSubview(messageLabel)

        NSLayoutConstraint.activate([
            uiNotificationView.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor, constant: -20),
            uiNotificationView.trailingAnchor.constraint(equalTo: messageLabel.trailingAnchor, constant: 20),
            uiNotificationView.topAnchor.constraint(equalTo: messageLabel.topAnchor, constant: 10),
            uiNotificationView.bottomAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 10)
            ])

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
