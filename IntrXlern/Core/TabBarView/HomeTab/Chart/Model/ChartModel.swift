//
//  ChartModel.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 23.03.2024.
//

import Foundation

struct ChartModel: Codable, Hashable {
    let id: Int
    let xCoordinate: CGFloat
    let yCoordinate: CGFloat
}
