//
//  StatsModel.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 07/12/21.
//

import Foundation

struct StatsModel {
    static let statsTableItems = [
        StatsTableItem(content: "Money you saved so far", value: 99),
        StatsTableItem(content: "Time you spent without buying", value: 3),
        StatsTableItem(content: "Time you saved", value: 6),
    ]

    struct StatsTableItem {
        var content: String
        var value: Float
    }
}
