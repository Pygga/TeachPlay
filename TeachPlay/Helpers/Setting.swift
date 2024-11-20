//
//  Settings.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 20.11.2024.
//

import Foundation

struct Setting: Codable {
    var questionOrder: Int           // Порядок вопросов
    var questionTextShuffling: Int   // Изменение формулировок вопроса
    var sound: Int                   // Звук
    var changeAfterHelp: Int         // Поведение после подсказки (меняем вопрос или остаемся)
    var helpAfterWrong: Int          // После неправильного ответа (показываем подсказку или переходим)
    var appLastVersion: String       // Сохранение версии приложения (чтобы когда обновляем, рефрешить контент)
}
