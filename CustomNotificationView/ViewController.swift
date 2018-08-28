//
//  ViewController.swift
//  CustomNotificationView
//
//  Created by Sreekanth Iragam Reddy on 4/2/18.
//  Copyright © 2018 Sreekanth Iragam Reddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showNotificationNow(_ sender: Any) {
        NotificationManager.shared.showNotification()
    }
    @IBAction func hideNotification(_ sender: Any) {
        NotificationManager.shared.hideNotificationView()
    }
    @IBAction func showAlertView(_ sender: Any) {

        let alertWindow = UIWindow(frame: UIScreen.main.bounds)
        alertWindow.rootViewController = UIViewController()
        alertWindow.windowLevel = UIWindowLevelAlert + 1
        alertWindow.isHidden = false

       let alert = UIAlertController(title: "keka", message: "tuuuu", preferredStyle: .actionSheet)

        let action = UIAlertAction(title: "new", style: .default, handler: nil)
        alert.addAction(action)
        alertWindow.rootViewController?.present(alert, animated: true, completion: nil)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

