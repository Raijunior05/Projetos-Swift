//
//  model.swift
//  Estacionamento
//
//  Created by Turma02-22 on 02/10/24.
//

import Foundation
struct Estacionamento: Decodable ,Hashable {
    let nomeEstacionamento: String?
    let quantidadeVagas: Int?
    let carros: [Carros?]
}

struct Carros: Decodable, Hashable {
    let modelo: String?
    let ano: Int?
    let cor: String?
    let preco: Double?
    let foto: String?
}
