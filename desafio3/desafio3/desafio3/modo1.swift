//
//  modo1.swift
//  desafio3
//
//  Created by Turma02-22 on 23/09/24.
//

import SwiftUI

struct modo1: View {
    var body: some View {
        ZStack{
            Color.color
                .ignoresSafeArea()
            VStack{
                Text("Modo 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    Spacer()
                VStack{
                    Text("Nome: Raimundo")
                        .font(.body)
                        .foregroundColor(.white)
                        .bold()
                    Text("Sobrenome: Junior")
                        .font(.body)
                        .foregroundColor(.white)
                        .bold()
                    }
                .frame(width: 300,height: 200)
                .background(Color.pink)
                .cornerRadius(10)
                
                    Spacer()
            }
        }
    }
}

#Preview {
    modo1()
}
