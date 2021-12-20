//
//  HomeModel.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 19/12/21.
//

import Foundation

struct HomeModel {
    static var numbers = [
        Contact(number: 0),
    ]
    
    static func update(_ number: Int) {
        HomeModel.numbers[0].updateNumber(number)
    }

    struct Contact {
        var number: Int

        mutating func updateNumber(_ number: Int) {
            self.number = number
        }
    }
}
