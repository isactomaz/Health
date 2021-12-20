//
//  TestModel.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 19/12/21.
//

import Foundation

struct TestModel {

    static let questions = [
        Question(content: "Biometrics lock?"),
        Question(content: "Share stats?"),
        Question(content: "Daily accountability reminder?"),
    ]

    static let options = [
        Choice(content: "very low"),
        Choice(content: "low"),
        Choice(content: "middle"),
        Choice(content: "high"),
        Choice(content: "very high"),
    ]

    struct Question {
        var content: String
    }

    struct Choice {
        var content: String
    }

}
