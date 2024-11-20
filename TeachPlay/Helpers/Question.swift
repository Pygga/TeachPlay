//
//  Question.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 20.11.2024.
//

import Foundation

struct Question: Codable {
    let question: [String]  // Массив с формулировками вопроса
    let image: String
    let optionA: String
    let optionB: String     // Правильный ответ всегда в optionA
    let optionC: String
    let optionD: String
    let id: Int
    var links: [String]?
    let helpText: String
}

