//
//  ProfileModel.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 07/12/21.
//

import Foundation

struct ProfileModel {
    static let profileTableItems = [
        ProfileTableItem(content: "Compartilhar seus resultados"),
        ProfileTableItem(content: "Lembrete de responsabilidade diária"),
    ]

    struct ProfileTableItem {
        var content: String
    }
}
