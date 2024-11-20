//
//  Topic.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 20.11.2024.
//

import Foundation

struct Topic: Codable {
    var questionSet: [Question]         // Исходный сет вопросов
    var continueQuestionSet: [Question] // Потенциально зашафленный сет (для продолжения игры)
    var topicTag: Int                   // Порядковый номер текущей темы
    var topicName: String               // Тема выбранной категории
}
