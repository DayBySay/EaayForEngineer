//
//  NotificationService.swift
//  EssayForEngineer
//
//  Created by Takayuki Sei on 2016/12/25.
//  Copyright © 2016年 Takayuki Sei. All rights reserved.
//

import Foundation
import UIKit
import UserNotifications
import UserNotificationsUI

struct NotificationService {
    
    static func initNotification() {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (status, error) in
            
        }
    }
    
    static func registerNotificationDayly() {
        let content = UNMutableNotificationContent()
        content.title = ""
        content.body = ""
        content.sound = UNNotificationSound.default()
        
        var date = DateComponents()
        date.hour = 19
        date.timeZone = NSTimeZone(abbreviation: "JST") as TimeZone!
        let trigger = UNCalendarNotificationTrigger.init(dateMatching: date, repeats: true)
        let request = UNNotificationRequest.init(identifier: "daily", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}
