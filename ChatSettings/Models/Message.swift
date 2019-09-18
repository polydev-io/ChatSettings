//
//  Message.swift
//  ChatLib
//
//  Created by Даниил Чемеркин on 18/09/2019.
//  Copyright © 2019 polydev.io. All rights reserved.
//

import Foundation
import UIKit

public struct Message {
    var title: String
    var delay: Double = 1
}

public typealias Messages = [Message]
