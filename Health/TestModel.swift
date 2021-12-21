//
//  TestModel.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 19/12/21.
//

import Foundation

struct TestModel {

    static let questions = [
        Question(content: "Você sente medo de ser excluído?"),
        Question(content: "Você sente necessidade de seguir tendências de redes sociais?"),
        Question(content: "Você sente necessidade de estar usando smartphones constantemente?"),
        Question(content: "Você sente muita falta de comprar algo?"),
        Question(content: "Qual seu sentimento relacionado à última compra? (Baixo para triste, e alto para feliz)"),
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

    static var choice = [2, 2, 2, 2, 2, 2, 2]

    struct Question {
        var content: String
    }

    struct Choice {
        var content: String
    }

}
