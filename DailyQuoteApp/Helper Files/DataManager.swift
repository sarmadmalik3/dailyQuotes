//
//  DataManager.swift
//  DailyQuoteApp
//
//  Created by Sarmad Ishfaq on 28/08/2021.
//

import Foundation
import UserNotifications

class DataManager {
    
    private init() {
        
    }
    
    static let shared = DataManager()
    
    func loadAllQuotesIntoUserDefaultArray() {
        
        let quotesModel = AllQuotes(quotes: [
                                        constants.quote1,constants.quote2,constants.quote4,constants.quote5,constants.quote6,constants.quote7,constants.quote8,constants.quote9,constants.quote10,constants.quote11,constants.quote12,constants.quote13,constants.quote14,constants.quote15,constants.quote16,constants.quote17,constants.quote18,constants.quote19,constants.quote20,constants.quote21,constants.quote22,constants.quote23,constants.quote24])
        
        let defaults = UserDefaults.standard
        defaults.setValue(quotesModel.quotes, forKey: CustomuserDefaults.allQuotes)
    }
    
    func showDailyQuote() {
        let allQuotes = UserDefaults.standard.stringArray(forKey: CustomuserDefaults.allQuotes) // all quotes
        if let quotes = allQuotes {
            let quoteFortheDay = quotes.first ?? "" // get quote for the day
            
            let updatedAllquotes = quotes.filter { quote in  // remove quote for the day from all quotes
                return !quote.contains(quoteFortheDay)
            }
            
            let defaults = UserDefaults.standard
            defaults.setValue(updatedAllquotes, forKey: CustomuserDefaults.allQuotes) // update all quotes
            
            var dailyQuotesArray = defaults.stringArray(forKey: CustomuserDefaults.dailyQuotesArray) ?? [] // get daily quotes array
            dailyQuotesArray.append(quoteFortheDay)
            
            defaults.setValue(dailyQuotesArray, forKey: CustomuserDefaults.dailyQuotesArray) // update daily quotes array
            
            defaults.setValue(quoteFortheDay, forKey: CustomuserDefaults.dailyQuote)
//            fireNotification()
        }
        
    }
    
    
    
    func fireNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Daily Quotes"
        content.body = "Your daily quotes is ready, go to daily inspiration and read the quote"
        content.sound = .default
        let time =  UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification", content: content, trigger: time)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
    func createDate(weekday: Int, hour: Int, minute: Int, year: Int)->Date{

        var components = DateComponents()
        components.hour = hour
        components.minute = minute
        components.year = year
        components.weekday = weekday // sunday = 1 ... saturday = 7
        components.weekdayOrdinal = 10
        components.timeZone = .current

        let calendar = Calendar(identifier: .gregorian)
        return calendar.date(from: components)!
    }

    //Schedule Notification with weekly bases.
    func scheduleNotification(at date: Date, body: String, titles:String) {

        let triggerWeekly = Calendar.current.dateComponents([.weekday,.hour,.minute,.second,], from: date)

        let trigger = UNCalendarNotificationTrigger(dateMatching: triggerWeekly, repeats: true)

        let content = UNMutableNotificationContent()
        content.title = titles
        content.body = body
        content.sound = UNNotificationSound.default
        content.categoryIdentifier = "todoList"

        let request = UNNotificationRequest(identifier: "textNotification", content: content, trigger: trigger)

//        UNUserNotificationCenter.current().delegate = self
//        //UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
//        UNUserNotificationCenter.current().add(request) {(error) in
//            if let error = error {
//                print(" We had an error: \(error)")
//            }
//        }
    }
    
}
