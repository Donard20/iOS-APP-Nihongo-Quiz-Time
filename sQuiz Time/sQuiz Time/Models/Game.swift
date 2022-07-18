//
//  Game.swift
//  sQuiz Time
//
//  Created by DONARD on 7/18/22.
//

import Foundation

// applying the game logic
// make the question private
struct Game {
    
    // private
    
    private let questions = Question.allQuestions.shuffled()
    // guess property
    private(set) var guesses = [Question: Int]() // can be read but not be written outside
    // tracking the question
    private(set) var currentQuestionIndex = 0
    // determining if the game has ended
    private(set) var isOver = false
    
    //internal
    
    // properties
    
    // return the number of questions in game
    var numberOfQuestions: Int {
        questions.count
    }
    
    // returns the current asked question
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    // iterating the guesses and calculate the total number of guess
    var guessCount: (correct: Int, incorrect: Int) {
        
        var count: (correct: Int, incorrect: Int) = (0, 0)
        
        for (question, guessIndex) in guesses {
            if question.correctAnswerIndex == guessIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    // update the guess index for specific question
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    // updating the number of guesses
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
    
}
