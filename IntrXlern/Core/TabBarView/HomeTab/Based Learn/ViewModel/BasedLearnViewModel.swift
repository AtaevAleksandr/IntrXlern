//
//  BasedLearnViewModel.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import Foundation
import SwiftUI

final class BasedLearnViewModel: ObservableObject {

    @Published var allLessons: [BasedLearnModel]
    @Published var completedLessonsCount: Int = 0
    @Published var activeLessonID: Int?

    private let completedLessonsKey = "completedLessons"
    private let activeLessonIDKey = "activeLessonID"

    init() {
        self.allLessons = BasedLearnModel.lessons.map { lesson in
            var modifiedLesson = lesson
            if modifiedLesson.id == 1 {
                modifiedLesson.isActive = true
            }
            return modifiedLesson
        }
        self.completedLessonsCount = 0
        self.activeLessonID = 1

        if let savedCompletedLessons = UserDefaults.standard.array(forKey: completedLessonsKey) as? [Int] {
            self.completedLessonsCount = savedCompletedLessons.count
            for lessonID in savedCompletedLessons {
                if let index = self.allLessons.firstIndex(where: { $0.id == lessonID }) {
                    self.allLessons[index].isComplete = true
                }
            }
        }

        if let savedActiveLessonID = UserDefaults.standard.integer(forKey: activeLessonIDKey) as Int? {
            self.activeLessonID = savedActiveLessonID
            if let index = self.allLessons.firstIndex(where: { $0.id == savedActiveLessonID }) {
                self.allLessons[index].isActive = true
            }
        }

        if self.activeLessonID == nil {
            self.activeLessonID = 1
            self.allLessons[0].isActive = true
            UserDefaults.standard.set(1, forKey: activeLessonIDKey)
        }
    }

    func completeLesson(_ lesson: BasedLearnModel) {
        guard let index = allLessons.firstIndex(where: { $0.id == lesson.id }) else { return }

        guard !allLessons[index].isComplete else { return }

        allLessons[index].isComplete = true

        if index + 1 < allLessons.count {
            allLessons[index + 1].isActive = true
        }

        if completedLessonsCount < totalLessonsCount {
            completedLessonsCount += 1
        }

        let completedLessonIds = allLessons.filter { $0.isComplete }.map { $0.id }
        UserDefaults.standard.set(completedLessonIds, forKey: completedLessonsKey)

        if let nextLesson = nextLesson(after: lesson) {
            activeLessonID = nextLesson.id
            UserDefaults.standard.set(nextLesson.id, forKey: activeLessonIDKey)
        }
    }

    func isLastLesson(_ lesson: BasedLearnModel) -> Bool {
        guard let index = allLessons.firstIndex(where: { $0.id == lesson.id }) else { return false }
        return index == allLessons.count - 1
    }

    var totalLessonsCount: Int {
        allLessons.count
    }

    func nextLesson(after lesson: BasedLearnModel) -> BasedLearnModel? {
        guard let currentIndex = allLessons.firstIndex(where: { $0.id == lesson.id }),
              currentIndex + 1 < allLessons.count else { return nil }
        return allLessons[currentIndex + 1]
    }
}

