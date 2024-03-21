//
//  HomeView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct HomeView: View {

    @State var showIntro: Bool = false
    @State var showLearn: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                VStack {
                    Image(.chart)
                        .resizable()
                        .scaledToFit()

                    VStack(spacing: 10) {
                        HomeButtonView(title: "Introduction", icon: "Intro") {
                            showIntro.toggle()
                        }

                        HomeButtonView(title: "Based Learn", icon: "Learn") {
                            showLearn.toggle()
                        }
                    }
                    Spacer()
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
            .fullScreenCover(isPresented: $showIntro) {
                LessonListView(show: $showIntro)
            }
            .fullScreenCover(isPresented: $showLearn) {
                BasedLearnView(show: $showLearn)
            }
        }
        .navigationViewStyle(.stack)
    }
}

extension HomeView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Main")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(LessonViewModel())
}
