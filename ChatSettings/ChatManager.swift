//
//  ChatSettings.swift
//  ChatLib
//
//  Created by Даниил Чемеркин on 17/09/2019.
//  Copyright © 2019 polydev.io. All rights reserved.
//

import Foundation

class ChatManager {
    
    typealias Steps = [Step]
    
    public weak var delegate: ChatSettingsDelegate? {
        didSet {
            chatHistory.delegate = self.delegate
        }
    }
    
    private var steps: Steps = []
    private var stepIndex: Int = 0
    private var step: Step {
        return steps[self.stepIndex]
    }
    lazy var chatHistory: ChatUnits = {
        let history = ChatUnits()
        history.delegate = delegate
        return history
    }()
    
    init(_ steps: Steps) {
        self.steps = steps
    }
    
    public func start() {
        self.sendStep()
    }
    
    private func sendStep() {
        let step = self.step
        let delegate = self.delegate
        let chat = self.chatHistory
        DispatchQueue.global(qos: .userInteractive).async {
            var delay: DispatchTime = .now() + 1
            for message in step.messages {
                DispatchQueue.main.asyncAfter(deadline: delay) {
                    chat.append(ChatUnit(title: message.title, type: .bot))
                    delegate?.chatSettings(new: message.title)
                }
                delay = delay + message.delay
            }
            guard let answers = step.answers else {
                return
            }
            DispatchQueue.main.asyncAfter(deadline: delay) {
                delegate?.chatSettings(self, new: answers)
            }
        }
    }
    
    public func newSteps(_ steps: Steps) {
        self.steps.append(contentsOf: steps)
    }
    
    public func next() {
        self.stepIndex += 1
        self.sendStep()
    }
    
}
