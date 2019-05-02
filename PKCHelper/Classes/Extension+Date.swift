//
//  Extension+Date.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/8/14.
//  Copyright © 2019 PKC Design. All rights reserved.

import Foundation

//MARK: - NSDate

extension NSDate {
    
    static func secondsToHoursMinutesSeconds (seconds : Int) -> (Int , Int, Int, Int) {
        return (seconds / 3600 / 24 , (seconds / 3600) % 24, (seconds % 3600) / 60, (seconds % 3600) % 60)
    }
}


//MARK: - Date

extension Date {
    func timeAgoDisplay() -> String {
        let secondsAgo = Int(Date().timeIntervalSince(self))
        
        let minute = 60
        let hour = 60 * minute
        let day = 24 * hour
        let week = 7 * day
        let month = 4 * week
        
        let quotient: Int
        let unit: String
        if secondsAgo < minute {
            quotient = secondsAgo
            unit = "秒"
        } else if secondsAgo < hour {
            quotient = secondsAgo / minute
            unit = "分"
        } else if secondsAgo < day {
            quotient = secondsAgo / hour
            unit = "小時"
        } else if secondsAgo < week {
            quotient = secondsAgo / day
            unit = "天"
        } else if secondsAgo < month {
            quotient = secondsAgo / week
            unit = "星期"
        } else {
            quotient = secondsAgo / month
            unit = "月"
        }
        
        return "\(quotient) \(unit)\(quotient == 1 ? "" : "s") ago"
        
    }
}
