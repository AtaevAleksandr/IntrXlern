//
//  LessonModel.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import Foundation
import SwiftUI

struct LessonModel: Identifiable, Codable, Hashable {
    let id: Int
    let title: String
    var isCompleted: Bool = false
}
