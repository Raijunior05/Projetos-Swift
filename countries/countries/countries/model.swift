//
//  model.swift
//  countries
//
//  Created by Turma02-22 on 30/09/24.
//

import Foundation

struct Country: Decodable ,Hashable {
    let name: Name?
    let independent: Bool?
    let status: String?
    let unMember: Bool?
    let region: String?
    let subregion: String?
    let area: Double?
    let population: Int?
    let flags: Flags?
}

struct Name: Decodable, Hashable {
    let common: String?
    let official: String?
}


struct Flags: Decodable, Hashable {
    let png: String?
    let svg: String?
    let alt: String?
}
