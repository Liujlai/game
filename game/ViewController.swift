//
//  ViewController.swift
//  game
//
//  Created by idea_liujl on 17/7/4.
//  Copyright © 2017年 idea_liujl. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    
var rep=Rep()
    
    @IBOutlet weak var lableUp: NSTextField!
    
    @IBOutlet weak var lableDown: NSTextField!
    
    
    @IBAction func Rock(sender: AnyObject) {
        rep.setStats(.Rock)
        judgement()
    }
    
    @IBAction func Scissor(sender: AnyObject) {
        rep.setStats(.Scissor)
        judgement()
    }
    
    
    @IBAction func Paper(sender: AnyObject) {
        rep.setStats(.Paper)
        judgement()
    }
    
    @IBAction func again(sender: AnyObject) {
        resetAll()
    }
    
    func resetAll(){
        lableUp.stringValue=""
        lableDown.stringValue=""
        rep.setStats(nil)
    }
    
    func judgement(){
        let randomRep=rep.randomRep()
        let currentStat=rep.getStats()
        let result=rep.compare(currentStat, anotherRepStat: randomRep)
        screen(result, stat: currentStat, anotherStat: randomRep)
    }
    
    
    
//    func aaa(){
//        rep.getStats()
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    func screen(result :Int,stat:Rep.stats,anotherStat:Rep.stats){
        var resultStrint=""
        var statString = ""
        var anotherString=""
        switch result{
        case 0:
            resultStrint = "输😂"
        case 1:
            resultStrint = "赢😜"
        case 2:
            resultStrint = "平局🤔"
        default:
            resultStrint = "🙄"
        }
        switch stat{
        case .Rock:
            statString="👊"
        case .Scissor:
            statString="✌️"
        case .Paper:
            statString="✋"
        }
        switch anotherStat{
        case .Rock:
            anotherString="👊"
        case .Scissor:
            anotherString="✌️"
        case .Paper:
            anotherString="✋"
        }

        
        lableUp.stringValue="你" + resultStrint + "了！"
        lableDown.stringValue="你出了" + statString + "，电脑出了" + anotherString + "!"
    }
    
}

