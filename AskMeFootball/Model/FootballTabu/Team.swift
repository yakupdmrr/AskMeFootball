//
//  Team.swift
//  AskMeFootball
//
//  Created by Yakup Demir on 24.12.2020.
//

import Foundation

struct Team {
    var TeamName:String?
    var TeamPoint:Int?
    var TeamTime:Int?
    
    init() {}
    
    init(TeamName:String,TeamPoint:Int,TeamTime:Int) {
        self.TeamName = TeamName
        self.TeamTime = TeamTime
        self.TeamPoint = TeamPoint
    }
}
