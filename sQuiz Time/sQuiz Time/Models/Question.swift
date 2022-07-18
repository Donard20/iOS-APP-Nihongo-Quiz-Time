//
//  Question.swift
//  sQuiz Time
//
//  Created by DONARD on 7/18/22.
//

import Foundation

struct Question: Hashable {     // Add hashable Conformance
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    // add complete questions using type properties
    static var allQuestions = [
        Question(questionText: "run",                               // 2
                 possibleAnswers: ["行く", "歩く", "走る", "寝る"],
                 correctAnswerIndex: 2),
        Question(questionText:"to play",                            // 3
                 possibleAnswers: ["歩く", "金曜日", "水", "遊ぶ"],
                 correctAnswerIndex: 3),
        Question(questionText:"sleep",                              // 4
                 possibleAnswers: ["火", "寝る", "帰る", "水"],
                 correctAnswerIndex: 1),
        Question(questionText:"get up",                             //5
                 possibleAnswers: ["起きる", "見る", "走る", "行く"],
                 correctAnswerIndex: 0),
        Question(questionText:"mother",                             // 6
                 possibleAnswers: ["野菜", "母", "魚", "父"],
                 correctAnswerIndex: 1),
        Question(questionText:"foreigner",                          // 7
                 possibleAnswers: ["ベトナム人", "フィリピン人", "外国人", "中国人"],
                 correctAnswerIndex: 2),
        Question(questionText:"movie theater",                      // 8
                 possibleAnswers: ["映画館", "プレーヤー", "俳優", "歌舞伎"],
                 correctAnswerIndex: 0),
        Question(questionText:"to send",                            // 9
                 possibleAnswers: ["寝る", "料理", "走る", "送る"],
                 correctAnswerIndex: 3),
        Question(questionText:"to get tired",                       // 10
                 possibleAnswers: ["親切", "疲れる", "元気", "月曜日"],
                 correctAnswerIndex: 1),
//        Question(questionText:"teacher",
//                 possibleAnswers: ["先生", "魚", "起きる", "俳優"],
//                 correctAnswerIndex: 0),
    ]
}
