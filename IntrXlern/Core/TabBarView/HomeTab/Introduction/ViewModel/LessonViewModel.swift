//
//  LessonViewModel.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import Foundation

class LessonViewModel: ObservableObject {

    @Published var lessons: [LessonModel] = [
        LessonModel(id: 1, title: "Урок 1"),
        LessonModel(id: 2, title: "Урок 2"),
        LessonModel(id: 3, title: "Урок 3"),
        LessonModel(id: 4, title: "Урок 4"),
        LessonModel(id: 5, title: "Урок 5")
    ]
}
