//
//  ChartViewModel.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 23.03.2024.
//

import Foundation

final class ChartViewModel: ObservableObject {
    @Published var completedItems: [ChartModel] = [ChartModel(id: 0, xCoordinate: 0, yCoordinate: 0)]

    private let completedItemsKey = "completedItems"

    init() {
        loadCompletedItems()
    }

    func addCompletedItem(id: Int, xCoordinate: CGFloat, yCoordinate: CGFloat) {
        let completedItem = ChartModel(id: id, xCoordinate: xCoordinate, yCoordinate: yCoordinate)
        completedItems.append(completedItem)
        saveCompletedItems()
    }

    private func saveCompletedItems() {
        let encodedData = try? JSONEncoder().encode(completedItems)
        UserDefaults.standard.set(encodedData, forKey: completedItemsKey)
    }

    private func loadCompletedItems() {
        if let encodedData = UserDefaults.standard.data(forKey: completedItemsKey),
           let loadedItems = try? JSONDecoder().decode([ChartModel].self, from: encodedData) {
            completedItems = loadedItems
        }
    }
}
