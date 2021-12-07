//
//  StatsModel.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 07/12/21.
//

import Foundation

struct StatsModel {
    static let statsTableItems = [
        StatsTableItem(content: "Money you saved so far"),
        StatsTableItem(content: "Time you spent without buying"),
        StatsTableItem(content: "Time you saved"),
    ]

    struct StatsTableItem {
        var content: String
    }
}
