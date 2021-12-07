//
//  ProfileModel.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 07/12/21.
//

import Foundation

struct ProfileModel {
    static let profileTableItems = [
        ProfileTableItem(content: "Biometrics lock"),
        ProfileTableItem(content: "Share stats"),
        ProfileTableItem(content: "Daily accountability reminder"),
    ]

    struct ProfileTableItem {
        var content: String
    }
}
