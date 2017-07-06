//
//  Rep.swift
//  game
//
//  Created by idea_liujl on 17/7/4.
//  Copyright © 2017年 idea_liujl. All rights reserved.
//

import Foundation

struct Rep{
    private var stat:stats!
    enum stats{
        case Rock
        case Scissor
        case Paper
    }
    
    func getStats() ->stats{
        return stat
    }
    
    mutating func setStats(Stats:stats!){
            stat=Stats
    }
    
    
    func randomRep() ->stats{
        let randomNumber=arc4random_uniform(3)
        var randomStat:stats!
        switch randomNumber{
        case 0:
            randomStat = .Rock
        case 1:
            randomStat = .Scissor
        case 2:
            randomStat = .Paper
        default:
           print("Error!")
        
        }
        return randomStat
    }
    
    
    func compare (aRepStat :stats,anotherRepStat: stats) ->Int{
        var result:Int!
        switch aRepStat{
            
        case .Rock:
            switch anotherRepStat{
            case .Rock:
                result=2
            case .Scissor:
                result=1
            case .Paper:
                result=0
            }
        case .Scissor:
            switch anotherRepStat{
            case .Rock:
                result=0
            case .Scissor:
                result=2
            case .Paper:
                result=1
            }
        case .Paper:
            switch anotherRepStat{
            case .Rock:
                result=1
            case .Scissor:
                result=0
            case .Paper:
                result=2
            }
        }
    
    return result
    }
    
}