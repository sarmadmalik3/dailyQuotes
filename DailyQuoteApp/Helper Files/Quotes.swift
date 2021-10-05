//
//  Wuotr.swift
//  DailyQuoteApp
//
//  Created by Malik Farhan Asim on 11/07/2021.
//

import Foundation
import UIKit


class AllQuotes : NSObject {
   
    var quotes : [String] = []
    
    init(quotes : [String]) {
        self.quotes = quotes
    }
}

struct CustomuserDefaults {
    static let allQuotes = "AllQuotes"
    static let dailyQuotesArray = "DailyQuotesArray"
    static let dailyQuote = "DailyQuote"
    static let firstLaunch = "FirstLaunch"
    static let appColor = #colorLiteral(red: 0.2, green: 0.0862745098, blue: 0.3254901961, alpha: 1)
    static let textColor = UIColor.white
    static let introText = "The Write Flow App has been designed just for you. Writing requires more than grammar, outlines and techniques. Writing requires courage, a belief in ones ability and an unrelenting desire. For some the reality of becoming a publish writer seems out of reach. If this is you, you no longer have to go another year dismissing the dream in your heart. This app is designed to motivate and inspire you toward the finish line."
    static let desiresText = "Write Flow will help you REMEMBER your goal of becoming a published author by having you determine your deepest desires around publishing.  In this section, find a quiet place and begin recording your goals. Whether your desire is to become a bestselling author or reach a specific amount of people with your message, list 7 writing desires and revisit this page often."
    
    static let reflectionText = "Whenever we begin a significant task, count the costs. Understand what is required of you and understand your WHY. This section of the app will display 4 questions to help you unlock your INNER truth.  You can edit your answers any time until you reach authenticity. When you reach this stage you will uncover a conviction which will usher you toward a burning desire. Once you get to this stage nothing will keep you from accomplishing your writing goal."
}



struct constants {
    
    static let quote1 = "Grow as a writer during the middle passage of your book"
    static let quote2 = "The start and end of your book may be easier  but it’s the middle were you have to knuckle down and remember your why"
    static let quote4 = "Your book will outlive you. Write"
    static let quote5 = "We have to finish what we start"
    static let quote6 = "Your writing a book. Be about it. Don’t talk about it. Write"
    static let quote7 = "You’ll be proud of yourself when you write: The End"
    static let quote8 = "In stillness and quietness is your strength"
    static let quote9 = "Be patient it will all come together"
    static let quote10 = "How will you feel if you don’t complete this work? Exactly. Write"
    static let quote11 = "Nothing else matters when you begin to write for the day"
    static let quote12 = "Let it go. Breath and write"
    static let quote13 = "If I don’t know anything else, I will finish this book"
    static let quote14 = "This book is a part of your life’s work. It has to be completed"
    static let quote15 = "Change your work setting sometimes. Go to a different location and be inspired"
    static let quote16 = " Be free to express yourself"
    static let quote17 = " Write a solid plan for your book sales. Imagine the best possible outcome"
    static let quote18 = "What will it feel like to have your book in your hands"
    static let quote19 = "One day people will be relaxing taking time out of their day to read your words"
    static let quote20 = "Your book will have an affect on people you’ll  never meet"
    static let quote21 = "Imagine people recommending your book to others"
    static let quote22 = "Enjoy the process"
    static let quote23 = "Get excited about your contribution on earth"
    static let quote24 = "You are making this world a better place"
    static let quote25 = " You’re putting together a master piece. Keep writing. Be patient"
    static let quote26 = " If writing is your passion let us witness this through your actions"
    static let quote27 = "Give yourself the permission to succeed in this area"
    static let quote28 = "Success is your portion"
    static let quote29 = "Expect great thing when you complete this book"
    static let quote30 = "Your voice matters. Your voice has always mattered."
    static let quote31 = "You’re unique. Find comfort in knowing it’s okay for your book to be unique too"
    static let quote32 = "24 hours in a day. How much attention will your writing project get today"
    static let quote33 = "Netflix, CNN, or Social media should not get more of your time than writing"
    static let quote34 = "Rise above any drama to keep your head and heart clear to write"
    static let quote35 = "Use the energy of a breakup to write your butt off"
    static let quote36 = "Use the energy that builds within from trials in relationships to write"
    static let quote37 = " Don’t over think a matter,  get your mind off of the thing you can’t change  right now and write instead"
    static let quote38 = "If you work outside the home, consider writing notes in your journal during lunchtime for your book"
    static let quote39 = "Your book gives you credibility"
    static let quote40 = "There is power in words. Release your power through words"
    static let quote41 = "If you won’t share your words, who will. Write your book"
    static let quote42 = "Your life has prepared you for this moment. Write"
    static let quote43 = "Stop having dialogue in your mind that is against your desire of being an author"
    static let quote44 = "Visualize yourself at your speaking engagement talking about your book"
    static let quote45 = "How does it FEEL to be a published author? Tap into that feeling"
    static let quote46 = "How does it feel for creativity to flow through you"
    static let quote47 = "Visualize yourself typing away completing your book"
    static let quote48 = "You do have an expertise. Share it through your book"
    static let quote49 = "Your book is an answer for someone else"
    static let quote50 = "You will find out soon why it was important for you to write your book"
    static let quote51 = "It doesn’t matter how many books are on the book shelf. The book shelves don’t have your book"
    static let quote52 = "The book will be finished because you DECIDED  this will be the outcome"
    static let quote53 = "Continue to put your passion in your work"
    static let quote54 = "Who is your ideal reader?  Visualize it"
    static let quote55 = "Release the message within you"
    static let quote56 = "Think about the end result -- often"
    static let quote57 = "Every night give thanks for your completed manuscript"
    static let quote58 = "Give thanks that you ARE an Author"
    static let quote59 = "Wake up to the fact: You will complete this work"
    static let quote60 = "Your ideas will come together"
    static let quote61 = "Sometimes while putting everything together it seems like a mess but it will come together. Be patient"
    static let quote62 = "Finish your manuscript this year"
    static let quote63 = "A dream without putting in the work is a fantasy."
    static let quote64 = "Don’t let another year pass without feeling proud of the work you accomplished for your book"
    static let quote65 = "It is your time if you decide it’s your time. No alibis"
    static let quote66 = "The race isn’t given to the swift but the one who endures"
    static let quote67 = "All great books start with the writer writing the first chapter"
    static let quote68 = "Compare yourself to no one"
    static let quote69 = "Add to your accomplishments by finishing this book"
    static let quote70 = "A finish book will make you an influencer"
    static let quote71 = "Live in gratitude"
    static let quote72 = "Visualize the lives that will be impacted by your book"
    static let quote73 = "Say great things about yourself as an author. Start NOW"
    static let quote74 = "Say great things about your book.  Start NOW"
    static let quote75 = "Declare that you’re a  published writer everyday"
    static let quote76 = "From this moment forward, I will continue to see myself as a published author"
    static let quote77 = "Everything my hand touches prospers. I cannot fail"
    static let quote78 = "No one defines me. I decide who I will be and I will be a published author"
    static let quote79 = "All mental blocks to finish this book are removed. I can write this book"
    static let quote80 = "My future can be different from my past and I will expect great things moving forward"
    static let quote81 = "No obstacle can stop me"
    static let quote82 = "The best IS yet to come. I need only to put in the work for my book"
    static let quote83 = "There are 8760 hours in a year. I can find the time this year to write consistently"
    static let quote84 = "I am delivered from public opinion"
    static let quote85 = " My past doesn’t matter. I can reinvent myself at anytime and I am deciding to be an author"
    static let quote86 = "This book isn’t just about me. This book is about others who need to hear my words."
    static let quote87 = "Doubts, Unbelief and fear will not push me around. I rise above them"
    static let quote88 = "Release negative thoughts about your book. Start NOW"
    static let quote89 = "Defeat is not your portion"
    static let quote90 = "I release myself  from anything that will stop me from writing this book"
    static let quote91 = "I can do this"
    static let quote92 = "There is a powerful purpose inside of me"
    static let quote93 = "You are not poor of ideas. There is a river of words that flow through you"
    static let quote94 = "I deserve success."
    static let quote95 = "I am coming out from the sidelines of my dream and will be a player. I will complete this work"
    static let quote96 = "My dream will come to fruition"
    static let quote97 = "Name something you have overcome. If you could do that, you can finish your book"
    static let quote98 = "Believe in yourself"
    static let quote100 = "There is a power inside of you that is greater than any obstacles outside of you"
    static let quote101 = "Finish your book"
    static let quote102 = "You are here to make an impact"
    static let quote103 = "You have what it takes"
    static let quote104 = "Trust your instincts"
   
    
   
}


