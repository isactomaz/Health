//
//  TestModel.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 19/12/21.
//

import Foundation

struct TestModel {

    static let questions = [
        Question(content: "Você sente muita falta de comprar algo?"),
        Question(content: "Qual seu sentimento relacionado à última compra?"),
        Question(content: "Sua última compra foi adequada para sua necessidade?"),
        Question(content: "Sua última compra foi influenciada por amigos/redes sociais?"),
    ]

    static let options = [
        Choice(content: "Muito baixo"),
        Choice(content: "Baixo"),
        Choice(content: "Neutro"),
        Choice(content: "Alto"),
        Choice(content: "Muito alto"),
    ]

    struct Question {
        var content: String
    }

    struct Choice {
        var content: String
    }

}
