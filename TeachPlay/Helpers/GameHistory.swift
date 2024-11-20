//
//  GameHistory.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 20.11.2024.
//

import Foundation

final class GameHistory: Codable {
    var question: String
    var correctAnswer: String
    var userAnswer: String
    var questionId: Int
    var image: String
    var helpText: String
    var links: [String]?
    
    init(
        question: String,
        correctAnswer: String,
        userAnswer: String,
        questionId: Int,
        image: String,
        helpText: String,
        links: [String]?
    ) {
        self.question = question
        self.correctAnswer = correctAnswer
        self.userAnswer = userAnswer
        self.questionId = questionId
        self.image = image
        self.helpText = helpText
        self.links = links
    }
}
