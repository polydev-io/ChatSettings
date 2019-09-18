//
//  Answer.swift
//  ChatLib
//
//  Created by Даниил Чемеркин on 17/09/2019.
//  Copyright © 2019 polydev.io. All rights reserved.
//

import Foundation

public class Answer {
    
    public enum CodeElementType {
        case back
        case normal
        case value
    }
    
    public typealias CodeElement = (_ chat: ChatManager, _ data: Any?) -> CodeElementType
    
    public var title: String
    public var block: CodeElement
    public var value: Any?
    
    public init(title: String, value: Any?, block: @escaping CodeElement) {
        self.title = title
        self.block = block
        self.value = value
    }
    
    public func execute(_ chat: ChatManager) {
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

public typealias Answers = [Answer]
