//
//  ChatUnits.swift
//  ChatLib
//
//  Created by Даниил Чемеркин on 18/09/2019.
//  Copyright © 2019 polydev.io. All rights reserved.
//

import Foundation

class ChatUnits {
    private var units: [ChatUnit] = []
    weak var delegate: ChatSettingsDelegate?
    
    enum ChangeType {
        case append
        case remove
    }

    public func append(_ newElement: ChatUnit) {
        units.append(newElement)
        print(units)
        delegate?.chatSettings(ChangeType.append, history: self)
    }
    
    public func append(contentsOf: [ChatUnit]) {
        units.append(contentsOf: contentsOf)
    }
    
    var count: Int {
        return units.count
    }
    
    subscript(index: Int) -> ChatUnit  {
        get {
            return units[index]
        }
        set {
            units[index] = newValue
        }
    }
}
