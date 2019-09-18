//
//  ChatUnit.swift
//  ChatLib
//
//  Created by Даниил Чемеркин on 17/09/2019.
//  Copyright © 2019 polydev.io. All rights reserved.
//

import Foundation

public struct ChatUnit {
    
    public enum ChatUnitType {
        case bot
        case user
    }
    
    public var title: String
    public var type: ChatUnitType
    
    public init(title: String, type: ChatUnitType) {
        self.title = title
        self.type = type
    }
    
}
