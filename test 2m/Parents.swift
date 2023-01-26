//
//  Parents.swift
//  test 2m
//
//  Created by cpu on 26/1/23.
//

import Foundation
class Parents{
    var question: String
    var issuePrice: Int  // цена вопроса
    var a: String
    var b: String
    var c: String
    var d: String
    var playerResponse: Bool  //ответ игрока
    var total = 0
    var totalWin = 120000
    init(question: String, issuePrice: Int, a: String, b: String, c: String, d: String, playerResponse: Bool, total: Int = 0, totalWin: Int = 120000) {
        self.question = question
        self.issuePrice = issuePrice
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.playerResponse = playerResponse
        self.total = total
        self.totalWin = totalWin
    }
   
    func showQuestion(){
        print("Вопрос на \(issuePrice)с - \(question)")
        print(" A) - \(a),  B) - \(b),  C) - \(c),  D) - \(d)")
        if playerResponse == true{
            print("Ваш ответ правильный, играем дальше")
            total += issuePrice
            print("вы выиграли \(total) сом")
            
        } else if playerResponse == false && issuePrice < 120000{
            print("к сожалению вы проиграли эту игру. Ваш выигрышь составил 0 сом")
            total = 0
            
        } else if playerResponse == false && issuePrice >= 120000{
            print("Вы ответили не правильно, из-за чего Ваша игра останавливается, но у Вас остается не сгораемая сумма в размере \(totalWin) сом")
        }
      
    }
    
}

