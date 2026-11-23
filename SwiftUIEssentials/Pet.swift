//
//  Pet.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

@Observable
class Pet: Identifiable {
    enum Kind {
        case cat
        case dog
        case fish
        case bird
        case lizard
        case turtle
        case rabbit
        case bug

        var systemImage: String {
            switch self {
            case .cat: return "cat.fill"
            case .dog: return "dog.fill"
            case .fish: return "fish.fill"
            case .bird: return "bird.fill"
            case .lizard: return "lizard.fill"
            case .turtle: return "tortoise.fill"
            case .rabbit: return "rabbit.fill"
            case .bug: return "ant.fill"
            }
        }
    }

    var name: String
    var kind: Kind
    var trick: String
    var profileImage: String
    var favoriteColor: Color
    var hasAward: Bool = false

    init(_ name: String, kind: Kind, trick: String, profileImage: String, favoriteColor: Color) {
        self.name = name
        self.kind = kind
        self.trick = trick
        self.profileImage = profileImage
        self.favoriteColor = favoriteColor
    }

    func giveAward() {
        hasAward = true
    }
}

extension Pet: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation { $0.name }
    }
}
