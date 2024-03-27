import SwiftUI

struct LineChartView: View {
    @EnvironmentObject var chartVM: ChartViewModel

    let dataPoints: [CGPoint]
    let maxX: CGFloat
    let maxY: CGFloat

    @State private var animateLine: CGFloat = 0

    var body: some View {
        GeometryReader { fullGeometry in
            ZStack {
                // X-axis
                Path { path in
                    path.move(to: CGPoint(x: 0, y: fullGeometry.size.height))
                    path.addLine(to: CGPoint(x: fullGeometry.size.width, y: fullGeometry.size.height))
                }
                .stroke(Color.white, style: StrokeStyle(lineWidth: 3))

                // Y-axis
                Path { path in
                    path.move(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: 0, y: fullGeometry.size.height))
                }
                .stroke(Color.white, style: StrokeStyle(lineWidth: 3))

                // Chart line
                Path { path in
                    for (index, point) in dataPoints.enumerated() {
                        let x = point.x / maxX * fullGeometry.size.width
                        let y = fullGeometry.size.height - (point.y / maxY * fullGeometry.size.height)

                        if index == 0 {
                            path.move(to: CGPoint(x: x, y: y))
                        } else {
                            path.addLine(to: CGPoint(x: x, y: y))
                        }
                    }
                }
                .trim(from: 0, to: animateLine)
                .stroke(Color.theme.customPurple, style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round))
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation(.linear(duration: 1)) {
                            animateLine = 1
                        }
                    }
                }

                // X-axis label
                Text("Based Learn")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .medium))
                    .offset(x: fullGeometry.size.width / 2 - 45, y: 90)

                // Y-axis label
                Text("Introduction")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .medium))
                    .rotationEffect(.degrees(-90))
                    .position(x: -15, y: 46)
            }
        }
        .padding()
        .padding()
        .padding()
        .background(Color.theme.notActive)
        .clipShape(.rect(cornerRadius: 12))
    }
}

struct ChartView: View {

    @EnvironmentObject var intrVM: IntroductionViewModel
    @EnvironmentObject var learnVM: BasedLearnViewModel
    @EnvironmentObject var chartVM: ChartViewModel

    var body: some View {
        VStack {
            let xOffset: CGFloat = 8
            let yOffset: CGFloat = 12

            let dataPoints = chartVM.completedItems.map { CGPoint(x: $0.xCoordinate + xOffset, y: $0.yCoordinate + yOffset) }

            LineChartView(dataPoints: dataPoints, maxX: 108, maxY: 112)
                .frame(height: 245)
                .onAppear {
                    DispatchQueue.main.async {
                        updateCompletionPercentages()
                    }
                }
                .environmentObject(IntroductionViewModel())
                .environmentObject(BasedLearnViewModel())
                .environmentObject(ChartViewModel())
                .onChange(of: intrVM.completedQuizzesCount) { _ in
                    DispatchQueue.main.async {
                        updateCompletionPercentages()
                    }
                }
                .onChange(of: learnVM.completedLessonsCount) { _ in
                    DispatchQueue.main.async {
                        updateCompletionPercentages()
                    }
                }
        }
    }

    func updateCompletionPercentages() {
        for item in intrVM.allQuizzes {
            if item.isComplete {
                let xCompletionPercentage = CGFloat(intrVM.completedQuizzesCount) / CGFloat(intrVM.totalQuizzesCount) * 100.0
                let yCompletionPercentage = CGFloat(learnVM.completedLessonsCount) / CGFloat(learnVM.totalLessonsCount) * 100.0
                chartVM.addCompletedItem(id: item.id, xCoordinate: yCompletionPercentage, yCoordinate: xCompletionPercentage)
            }
        }

        for item in learnVM.allLessons {
            if item.isComplete {
                let xCompletionPercentage = CGFloat(intrVM.completedQuizzesCount) / CGFloat(intrVM.totalQuizzesCount) * 100.0
                let yCompletionPercentage = CGFloat(learnVM.completedLessonsCount) / CGFloat(learnVM.totalLessonsCount) * 100.0
                chartVM.addCompletedItem(id: item.id, xCoordinate: yCompletionPercentage, yCoordinate: xCompletionPercentage)
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(BasedLearnViewModel())
        .environmentObject(IntroductionViewModel())
        .environmentObject(ChartViewModel())
}
