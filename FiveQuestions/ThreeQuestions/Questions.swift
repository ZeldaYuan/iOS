//
//  Questions.swift
//  ThreeQuestions
//
//  Created by Zelda Yuan on 2016-04-11.
//  Copyright © 2016 Zelda Yuan. All rights reserved.

import Foundation

class Questions{
    var theQuestions: [Question] = []  //theQuestions hold the list of questions

init(){
  var addQuestion = Question()
  addQuestion.number = 1
  addQuestion.question = "Why it's not good to eat apple in the evening."
  addQuestion.answera = "Because apple will create poision in the evening"
  addQuestion.answerb = "Because after you eat in the evening,your body will have poision"
  addQuestion.answerc = "Because apple has a lot fruit vinegar,eat in the evening is not good"
  addQuestion.answerd = "Because it's not good for the teeth"
  theQuestions.append(addQuestion)

  addQuestion = Question()
  addQuestion.number = 2
  addQuestion.question = "Who wrote the 夜雨寄北"
  addQuestion.answera = "Li QingZhao"
  addQuestion.answerb = "DuFu"
  addQuestion.answerc = "DuMu"
  addQuestion.answerd = "Li ShangYin"
  theQuestions.append(addQuestion)
    
  addQuestion = Question()
  addQuestion.number = 3
  addQuestion.question = "Who is 鬼谷子"
  addQuestion.answera = "Scientist"
  addQuestion.answerb = "The teacher of SunBin"
  addQuestion.answerc = "SunWu"
  addQuestion.answerd = "Soldier"
  theQuestions.append(addQuestion)
    
  addQuestion = Question()
  addQuestion.number = 4
  addQuestion.question = "What is a Swift language"
  addQuestion.answera = "Swift is a new programming language for iOS, OS X"
  addQuestion.answerb = "It's kind of C++"
  addQuestion.answerc = "Linux language"
  addQuestion.answerd = "machine language"
  theQuestions.append(addQuestion)
    
  addQuestion = Question()
  addQuestion.number = 5
  addQuestion.question = "What is a iOS"
  addQuestion.answera = "It is a new operation system"
  addQuestion.answerb = "It's kind of C++"
  addQuestion.answerc = "iOS is Apple's proprietary mobile operating system for its devices."
  addQuestion.answerd = "Linux system"
  theQuestions.append(addQuestion)
    
    }
    
}
