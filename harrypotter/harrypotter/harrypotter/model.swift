//
//  model.swift
//  harrypotter
//
//  Created by Turma02-22 on 27/09/24.
//

import Foundation
struct HarryPotter: Decodable ,Identifiable {
    let id: String
    let name: String?
    let alternate_names: [String]?
    let species: String?
    let gender: String?
    let house: String?
//    let dateOfBirth: String?
//    let yearOfBirth: Int?
//    let wizard: Bool?
//    let ancestry: String?
//    let eyeColour: String?
//    let hairColour: String?
//    let wand: Wand
//    let patronus: String?
//    let hogwartsStudent: Bool?
//    let hogwartsStaff: Bool?
//    let actor: String?
//    let alternateActors: [String]?
//    let alive: Bool?
    let image: String?
}
//struct Wand: Decodable {
//        let wood: String?
//        let core: String?
//        let length: Int?
//    }

