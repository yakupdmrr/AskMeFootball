//
//  QuizQuestion.swift
//  AskMeFootball
//
//  Created by Yakup Demir on 21.12.2020.
//

import Foundation

struct QuizQuestion {
    var question:String?
    var a:String?
    var b:String?
    var c:String?
    var d:String?
    var answer:String?
    var time:Int?
    var hint:String?
    
    init() {}
    
    init(question:String,a:String,b:String,c:String,d:String,answer:String,time:Int,hint:String) {
        self.question = question
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.answer = answer
        self.time = time
        self.hint = hint
    }
}
