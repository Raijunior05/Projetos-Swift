//
//  desafio2.swift
//  Desafio1
//
//  Created by Turma02-22 on 18/09/24.
//

import SwiftUI

struct desafio2: View {
    var body: some View {
        HStack{
            Image("images (1)")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .padding()
            VStack(spacing: 10) {
                Text("Hackatruck")
                Text("Swift")
                Text("Caminhao")
            }
            .padding()
        }
    }
}

#Preview {
    desafio2()
}
