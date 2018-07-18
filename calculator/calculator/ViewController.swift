//
//  ViewController.swift
//  calculator
//
//  Created by Zelda Yuan on 2016-02-05.
//  Copyright © 2016 Zelda Yuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var startTapping = false
    
    var brain = CalculatorBrain()
    
    @IBAction func numberTapping(sender: UIButton) {
        
        if startTapping {
            resultLabel.text?.appendContentsOf(sender.currentTitle!)
        } else {
            resultLabel.text = sender.currentTitle
            startTapping = true
        }
    }
    
    @IBAction func clearButton(sender: UIButton) {
        resultLabel.text = "0"
        startTapping = false
        //        lastOp = nil
        brain.lastOp = nil
        brain.clear()
    }
    
    
    @IBAction func operation(sender: UIButton) {
        startTapping = false
        //        opQueue.append(Int(resultLabel.text!)!)
        if let result = brain.addNumber(Int(resultLabel.text!)!, opNew: sender.currentTitle!) {
            resultLabel.text = String(result)
        }
    }
    
   // var resultLabel

/*    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func ClearButton(sender:UIButton){
        resultLabel.text="0"
        startTapping="false"
        lastOp=nil
        
    }
    //put data in queue is brain.addnumber
    var opQueue = (Int)()
    var lastOp:String?
    
    //lstOp !=nil   //pass this operate to another fun (dequeue)to do this
    if let op = lastOp{
        switch op{
        case "+":dequeue(+)  //let dequeue do this operate +-*/
/*        case "-":dequeue({$0 -$1})
        case "*":dequeue({(a:Int,b:Int) -> Int) in return a*b})
            
            }
            let divider = int(result.text!)
            if devider==0{
                
            }
            
        }
    lastOp=sender.currentTitle   //save current data before operator to ,
    
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//xcode add break point,console will show it,use F6 step by step,F7 is go into this line

//If there is data do this,if no data execute 0

    func dequeue(op: (Int,Int) ->Int){  //define dequeue, first in first out .Suggest use playground to check which is correct
       // print(items: Any...)    //debug always use,
        print("\opQueue")   //no affect your interface,only for debug
        if let opA=opQueue.popLast(), opB=opQueue.popLast(){
                                        //pop is two operate, took last data and delete it.
            let result = op(opB,opA)
            opQueue.append(result)  //do -,will find error
        }//Pop your last data, swift self function popLast
    }*/
    
    
}

