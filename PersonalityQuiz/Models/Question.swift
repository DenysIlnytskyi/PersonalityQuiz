//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Денис Ільницький on 08/08/2022.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "What kind of food you like?",
                type: .single,
                answers: [
                    Answer(title: "Meat", animal: .dog),
                    Answer(title: "Fish", animal: .cat),
                    Answer(title: "Carrot", animal: .rabbit),
                    Answer(title: "Corn", animal: .turtle)
                ]
            ),
            Question(
                title: "What you like more?",
                type: .multiple,
                answers: [
                    Answer(title: "Swim", animal: .dog),
                    Answer(title: "Sleep", animal: .cat),
                    Answer(title: "Be cute", animal: .rabbit),
                    Answer(title: "Eat", animal: .turtle)
                ]
            ),
            Question(
                title: "You like riding by car?",
                type: .ranged,
                answers: [
                    Answer(title: "Hate", animal: .cat),
                    Answer(title: "I'm nervous", animal: .rabbit),
                    Answer(title: "I don't notice", animal: .turtle),
                    Answer(title: "Worship", animal: .dog)
                ]
            )
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You like to be with friends. You always ready to help them"
        case .cat:
            return "You like to be alone. You walk and catch mouse"
        case .rabbit:
            return "You like all soft things. You are healthy and full of energy"
        case .turtle:
            return "Your power - wisdom. Slow and thoughtful and winning on far distance"
        }
    }
}
