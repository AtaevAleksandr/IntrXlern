//
//  IntroductionViewModel.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 22.03.2024.
//

import Foundation

final class IntroductionViewModel: ObservableObject {

    @Published var allQuizzes: [QuizModel]
    @Published var completedQuizzesCount: Int = 0
    @Published var activeQuizID: Int?

    private let completedQuizzesKey = "completedQuizzes"
    private let activeQuizIDKey = "activeQuizID"

    init() {
        self.allQuizzes = QuizModel.quizzes.map { quiz in
            var modifiedQuiz = quiz
            if modifiedQuiz.id == 1 {
                modifiedQuiz.isActive = true
            }
            return modifiedQuiz
        }
        self.completedQuizzesCount = 0
        self.activeQuizID = 1

        if let savedCompletedQuiz = UserDefaults.standard.array(forKey: completedQuizzesKey) as? [Int] {
            self.completedQuizzesCount = savedCompletedQuiz.count
            for quizID in savedCompletedQuiz {
                if let index = self.allQuizzes.firstIndex(where: { $0.id == quizID }) {
                    self.allQuizzes[index].isComplete = true
                }
            }
        }

        if let savedActiveQuizID = UserDefaults.standard.integer(forKey: activeQuizIDKey) as Int? {
            self.activeQuizID = savedActiveQuizID
            if let index = self.allQuizzes.firstIndex(where: { $0.id == savedActiveQuizID }) {
                self.allQuizzes[index].isActive = true
            }
        }

        if self.activeQuizID == nil {
            self.activeQuizID = 1
            self.allQuizzes[0].isActive = true
            UserDefaults.standard.set(1, forKey: activeQuizIDKey)
        }
    }

    var totalQuizzesCount: Int {
        allQuizzes.count
    }

    func completeQuiz(_ quiz: QuizModel) {
        guard let index = allQuizzes.firstIndex(where: { $0.id == quiz.id }) else { return }

        guard !allQuizzes[index].isComplete else { return }

        allQuizzes[index].isComplete = true

        if index + 1 < allQuizzes.count {
            allQuizzes[index + 1].isActive = true
        }

        if completedQuizzesCount < totalQuizzesCount {
            completedQuizzesCount += 1
        }

        let completedQuizIds = allQuizzes.filter { $0.isComplete }.map { $0.id }
        UserDefaults.standard.set(completedQuizIds, forKey: completedQuizzesKey)

        if let nextQuiz = nextQuiz(after: quiz) {
            activeQuizID = nextQuiz.id
            UserDefaults.standard.set(nextQuiz.id, forKey: activeQuizIDKey)
        }
    }

    func nextQuiz(after quiz: QuizModel) -> QuizModel? {
        guard let currentIndex = allQuizzes.firstIndex(where: { $0.id == quiz.id }),
              currentIndex + 1 < allQuizzes.count else { return nil }
        return allQuizzes[currentIndex + 1]
    }
}
