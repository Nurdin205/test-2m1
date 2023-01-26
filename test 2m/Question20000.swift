//
//  Question20000.swift
//  test 2m
//
//  Created by cpu on 26/1/23.
//

import Foundation
class Question20000: Parents{
    override func showQuestion(){
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

