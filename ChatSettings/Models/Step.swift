//
//  Step.swift
//  ChatLib
//
//  Created by Даниил Чемеркин on 17/09/2019.
//  Copyright © 2019 polydev.io. All rights reserved.
//

import Foundation

public class Step {
    public var messages: Messages
    public var answers: Answers?
    
    public init(message: Messages, answers: Answers?) {
        self.answers = answers
        self.messages = message
    }
}
