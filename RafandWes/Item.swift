//
//  Item.swift
//  RafandWes
//
//  Created by Rafferty Cruikshank on 5/23/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
