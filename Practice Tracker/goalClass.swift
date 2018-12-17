//
//  goalClass.swift
//  Practice Tracker
//
//  Created by Evan Madill on 12/16/18.
//  Copyright © 2018 Evan Madill. All rights reserved.
//

import UIKit

class Goals {
    
    //MARK: Properties
    
    var title: String
    var description: String?
    var longestStreak: Int = 0
    var currentStreak: Int = 0
    var resetEval: NSDate?
    
    //MARK: Initialization
    init?(title: String, description: String?, longestStreak: Int, currentStreak: Int, resetEval: NSDate?) {
        //Fail initialization if no title
        if title.isEmpty {
            return nil
        }
        
        self.title = title
        self.description = description
        self.longestStreak = longestStreak
        self.currentStreak = currentStreak
        self.resetEval = resetEval
        
    }
}
