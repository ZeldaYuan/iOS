//
//  CalculatorBrain.swift
//  calculator
//
//  Created by Zelda Yuan on 2016-02-06.
//  Copyright © 2016 Zelda Yuan. All rights reserved.
//
//All the not related to view, put as a real case 
import Foundation   //Tell brain do sth in control view "Clear fun" ,put all about opearation in brain

class CalculatorBrain {
    var opQueue = [Int]()
    var lastOp: String?
    
    func addNumber(a:Int, opNew:String) -> Int? {
        opQueue.append(a)
        
        if let op = lastOp {
            
            lastOp = opNew
            
            switch op {
            case "+": return dequeue(+)
            case "-": return dequeue({$0 - $1})
            case "*": return dequeue({(a: Int, b: Int) -> Int in return a * b})
            case "/": return dequeue({$0/$1})
            default: break
            }
        }
        
        lastOp = opNew
        
        return nil
    }
    
    func dequeue(op: (Int, Int) -> Int) -> Int {
        if let opA = opQueue.popLast(), opB = opQueue.popLast() {
            
            let result = op(opB,opA)
            
            opQueue.append(result)
            
            return result
        }
        return 0
    }
    
    func clear() {
        opQueue.removeAll()
    }
    
    
}