//
//  ViewController.swift
//  FiveQuestions-original file name ThreeQuestions
//  Choose each one correct answer from 4 options
//  Created by Zelda Yuan on 2016-04-11.
//  Copyright © 2016 Zelda Yuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let correctAnswer:[String]=["0c","1d","2b","3a","4c"] //must-1,or not work
    var selectAnswer:[String] = []  //Initial select answer empty
    var record: Int = 0
    var curIndex: Int = 0
    var theQuest: Questions = Questions()

    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerA: UILabel!
    @IBOutlet weak var answerB: UILabel!
    @IBOutlet weak var answerC: UILabel!
    @IBOutlet weak var answerD: UILabel!
    
    @IBOutlet weak var recordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let noLabel = curIndex + 1  //Display the first question
        numLabel.text = "\(noLabel)"
        questionLabel.text = theQuest.theQuestions[curIndex].question
        answerA.text = theQuest.theQuestions[curIndex].answera
        answerB.text = theQuest.theQuestions[curIndex].answerb
        answerC.text = theQuest.theQuestions[curIndex].answerc
        answerD.text = theQuest.theQuestions[curIndex].answerd
    }

    @IBAction func buttonNext(sender: AnyObject) {
        if curIndex == theQuest.theQuestions.count-1 {
            return
        }   //Show next question and answer
        curIndex += 1
        let noLabel = curIndex + 1
        numLabel.text = "\(noLabel)"
        questionLabel.text = theQuest.theQuestions[curIndex].question
        answerA.text = theQuest.theQuestions[curIndex].answera
        answerB.text = theQuest.theQuestions[curIndex].answerb
        answerC.text = theQuest.theQuestions[curIndex].answerc
        answerD.text = theQuest.theQuestions[curIndex].answerd
     }
    
    @IBAction func buttonPrex(sender: AnyObject) {
        if curIndex <= 0 {
            return
        }   ////Show previous question and answer
        curIndex = curIndex - 1
        let noLabel = curIndex + 1
        numLabel.text = "\(noLabel)"
        questionLabel.text = theQuest.theQuestions[curIndex].question
        answerA.text = theQuest.theQuestions[curIndex].answera
        answerB.text = theQuest.theQuestions[curIndex].answerb
        answerC.text = theQuest.theQuestions[curIndex].answerc
        answerD.text = theQuest.theQuestions[curIndex].answerd
    }
    
    @IBAction func buttonA(sender: AnyObject) {
        selectAnswer.append("\(curIndex)"+"a")
    }
    
    @IBAction func buttonB(sender: AnyObject) {
        selectAnswer.append("\(curIndex)"+"b")
    }
    
    @IBAction func buttonC(sender: AnyObject) {
        selectAnswer.append("\(curIndex)"+"c")
    }
    
    @IBAction func buttonD(sender: AnyObject) {
        selectAnswer.append("\(curIndex)"+"d")
    }

    @IBAction func recordButton(sender: AnyObject) {
        repeat { if selectAnswer[curIndex] == correctAnswer[curIndex]
        {
            record = record + 1 ;
            curIndex = curIndex-1 ;
        }
        else {
            curIndex = curIndex-1 ;
             }
        } while curIndex > 0
      //  print("Your record is \(record+1) out of 5")
        
        recordLabel.text = "Your record is \(record+1) out of 5"
        recordLabel.sizeToFit()
    }

}


