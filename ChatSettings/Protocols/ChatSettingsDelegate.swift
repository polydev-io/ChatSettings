//
//  ChatSettingsDelegate.swift
//  ChatLib
//
//  Created by Даниил Чемеркин on 17/09/2019.
//  Copyright © 2019 polydev.io. All rights reserved.
//

import Foundation

protocol ChatSettingsDelegate: class {
    func chatSettings(new message: String)
    func chatSettings(_ chat: ChatSettings, new answers: Answers)
    func chatSettings(_ chatHistoryChanged: ChatUnits.ChangeType, history: ChatUnits)
}
