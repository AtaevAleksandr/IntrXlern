//
//  IntroductionView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 22.03.2024.
//

import SwiftUI

struct IntroductionView: View {

    @Binding var show: Bool
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var introVM: IntroductionViewModel

    @State var showQuizOne: Bool = false
    @State var showQuizTwo: Bool = false
    @State var showQuizThree: Bool = false
    @State var showQuizFour: Bool = false
    @State var showQuizFive: Bool = false
    @State var showQuizSix: Bool = false
    @State var showQuizSeven: Bool = false
    @State var showQuizEight: Bool = false
    @State var showQuizNine: Bool = false
    @State var showQuizTen: Bool = false
    @State var showQuizEleven: Bool = false
    @State var showQuizTwelve: Bool = false
    @State var showQuizThirteen: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Text("We offer you 13 lessons and quizzes for them, starting with them, you will gain new knowledge and become closer to understanding the Forex market")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.white)
                            .padding(.top, 16)
                            .padding(.horizontal)

                        VStack(spacing: 8) {
                            HStack {
                                Spacer()

                                Text("\(introVM.completedQuizzesCount)/\(introVM.totalQuizzesCount)")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundStyle(Color.theme.customGray)
                            }

                            ForEach(introVM.allQuizzes) { quiz in
                                if quiz.isComplete || quiz.id == 1 || quiz.isActive {

                                    Button {
                                        switch quiz.id {
                                        case 1:
                                            showQuizOne = true
                                        case 2:
                                            showQuizTwo = true
                                        case 3:
                                            showQuizThree = true
                                        case 4:
                                            showQuizFour = true
                                        case 5:
                                            showQuizFive = true
                                        case 6:
                                            showQuizSix = true
                                        case 7:
                                            showQuizSeven = true
                                        case 8:
                                            showQuizEight = true
                                        case 9:
                                            showQuizNine = true
                                        case 10:
                                            showQuizTen = true
                                        case 11:
                                            showQuizEleven = true
                                        case 12:
                                            showQuizTwelve = true
                                        case 13:
                                            showQuizThirteen = true
                                        default:
                                            break
                                        }
                                    } label: {

                                        HStack(spacing: 15) {
                                            Text("Lesson \(quiz.id)")
                                                .font(.system(size: 16, weight: .semibold))
                                                .frame(width: 80, alignment: .leading)
                                                .foregroundStyle(.white)

                                            Text(quiz.title)
                                                .font(.system(size: 16, weight: .medium))
                                                .foregroundStyle(quiz.textColor)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .multilineTextAlignment(.leading)

                                            Spacer()
                                            Image(systemName: "checkmark.circle")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 24, height: 24)
                                                .foregroundStyle(Color.theme.customGreen.opacity(quiz.isComplete ? 1 : 0))
                                        }
                                        .padding(.horizontal)
                                        .frame(height: 60)
                                        .background(quiz.backgroundColor)
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    }
                                } else {
                                    Button(action: {}) {
                                        HStack(spacing: 15) {
                                            Text("Lesson \(quiz.id)")
                                                .font(.system(size: 16, weight: .semibold))
                                                .frame(width: 80, alignment: .leading)
                                                .foregroundStyle(.white)

                                            Text(quiz.title)
                                                .font(.system(size: 16, weight: .medium))
                                                .foregroundStyle(Color.theme.customGray)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .multilineTextAlignment(.leading)

                                            Spacer()
                                        }
                                        .padding(.horizontal)
                                        .frame(height: 60)
                                        .background(Color.theme.notActive)
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    }
                                    .disabled(true)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                title
                dismissButton
            }
            .fullScreenCover(isPresented: $showQuizOne) {
                FirstInfoQuizView(isStartQuiz: $showQuizOne)
            }
            .fullScreenCover(isPresented: $showQuizTwo) {
                SecondInfoQuizView(isStartQuiz: $showQuizTwo)
            }
            .fullScreenCover(isPresented: $showQuizThree) {
                ThirdInfoQuizView(isStartQuiz: $showQuizThree)
            }
            .fullScreenCover(isPresented: $showQuizFour) {
                FourthInfoQuizView(isStartQuiz: $showQuizFour)
            }
            .fullScreenCover(isPresented: $showQuizFive) {
                FifthInfoQuizView(isStartQuiz: $showQuizFive)
            }
            .fullScreenCover(isPresented: $showQuizSix) {
                SixthInfoQuizView(isStartQuiz: $showQuizSix)
            }
            .fullScreenCover(isPresented: $showQuizSeven) {
                SeventhInfoQuizView(isStartQuiz: $showQuizSeven)
            }
            .fullScreenCover(isPresented: $showQuizEight) {
                EighthInfoQuizView(isStartQuiz: $showQuizEight)
            }
            .fullScreenCover(isPresented: $showQuizNine) {
                NinthInfoQuizView(isStartQuiz: $showQuizNine)
            }
            .fullScreenCover(isPresented: $showQuizTen) {
                TenthInfoQuizView(isStartQuiz: $showQuizTen)
            }
            .fullScreenCover(isPresented: $showQuizEleven) {
                EleventhInfoQuizView(isStartQuiz: $showQuizEleven)
            }
            .fullScreenCover(isPresented: $showQuizTwelve) {
                TwelfthInfoQuizView(isStartQuiz: $showQuizTwelve)
            }
            .fullScreenCover(isPresented: $showQuizThirteen) {
                ThirteenthInfoQuizView(isStartQuiz: $showQuizThirteen)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension IntroductionView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Introduction")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }

    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                dismiss()
            } label: {
                Text("Back")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    IntroductionView(show: .constant(false))
        .environmentObject(IntroductionViewModel())
}
