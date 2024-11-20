//
//  SoundPlayer.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 20.11.2024.
//

import UIKit
import AVFoundation
//
//final class SoundPlayer {
//    static let shared = SoundPlayer()
//    var player = AVAudioPlayer()
//    private init() { }
//
//    func playSound(sound: Sounds) {
//        /// Фикс для симуляторов ниже 13.0
//        /// Сильные лаги, если оставить AVAudioPlayer
//        #if targetEnvironment(simulator)
//        if #available(iOS 14, *) {}
//        else {
//            return
//        }
//        #endif
//        
//        if Game.shared.settings.sound == 0 {
//            
//            var name: String = ""
//            var soundExtension: String = ""
//            
//            switch sound {
//            case .topicAndSettingsButton, .buttonTapped, .answerButtonWrong:
//                name = "click"
//                soundExtension = "mp3"
//            
//            case .correctAnswer:
//                name = "rightAnswer"
//                soundExtension = "mp3"
//            case .clearRecordsSound:
//                name = "trash"
//                soundExtension = "mp3"
//            case .infoAboutSetting:
//                name = "button1"
//                soundExtension = "wav"
//            case .theAppIsLoading:
//                name = "swipe"
//                soundExtension = "mp3"
//            case .showContinueButton:
//                name = "showContinue"
//                soundExtension = "mp3"
//            case .hideContinueButton:
//                name = "hideContinue"
//                soundExtension = "mp3"
//            case .error:
//                name = "error"
//                soundExtension = "mp3"
//            }
//            
//            guard let url = Bundle.main.url(
//                forResource: name,
//                withExtension: soundExtension
//            ) else {
//                return
//            }
//            
//            do {
//                player = try AVAudioPlayer(contentsOf: url)
//                player.play()
//            } catch {
//                print("Error with sound")
//            }
//        }
//    }
//}

