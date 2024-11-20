//
//  Record.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 21.11.2024.
//

import Foundation

struct Record: Codable {
    var date: Date?                         // Дата
    var score: Int?                         // Общий счет
    var topic: String?                      // Тема игры (название категории)
    var totalQuestion: Int?                 // Общее количество вопросов
    var percentOfCorrectAnswer: Double?     // Процент правильных ответов
    var helpCounter: Int?                   // Счетчик подсказок
    var playedNum: Int?                     // Отыгранное количество вопросов
    var continueGameStatus: Bool?           // Статус "продолжаем" игру или нет
    var gameHistory: [GameHistory]?         // История игры
    var helpFlag: Bool?                     // Флаг "Брали подсказку или нет"
    
    // Computed properties
    
    var gameIsFinished: Bool {
        totalQuestion == playedNum
    }
}
