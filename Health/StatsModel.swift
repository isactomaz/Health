//
//  StatsModel.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 07/12/21.
//

import Foundation

struct StatsModel {
    static let statsTableItems = [
        StatsTableItem(content: "Satisfação relacionada às compras realizadas", value: 3),
        StatsTableItem(content: "Tempo de repouso", value: 3),
        StatsTableItem(content: "Quantidade de desbloqueio de tela", value: 25),
        StatsTableItem(content: "Tempo do aparelho", value: 6),
    ]

    struct StatsTableItem {
        var content: String
        var value: Float
    }
}
