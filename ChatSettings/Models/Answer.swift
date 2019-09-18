//
//  Answer.swift
//  ChatLib
//
//  Created by Даниил Чемеркин on 17/09/2019.
//  Copyright © 2019 polydev.io. All rights reserved.
//

import Foundation

class Answer {
    
    enum CodeElementType {
        case back
        case normal
        case value
    }
    
    typealias CodeElement = (_ chat: ChatManager, _ data: Any?) -> CodeElementType
    
    var title: String
    var block: CodeElement
    var value: Any?
    
    init(title: String, value: Any?, block: @escaping CodeElement) {
        self.title = title
        self.block = block
        self.value = value
    }
    
    func execute(_ chat: ChatManager) {
        // TODO: - Выводить ответ
        chat.chatHistory.append(ChatUnit(title: self.title, type: .user))
        switch block(chat, value) {
        case .back:
            //TODO: - Сделать возврат
            break
        case .normal:
            break
        case .value:
            break
        }
    }
}

typealias Answers = [Answer]
