//
//  modo2.swift
//  desafio3
//
//  Created by Turma02-22 on 23/09/24.
//

import SwiftUI

struct modo2: View {
    @State var nome: String = ""
    var body: some View {
        NavigationStack
        {
            ZStack{
                Color.color
                    .ignoresSafeArea()
                VStack{
                    Text("Modo 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        Spacer()
                    VStack{
                        TextField("Digite seu nome", text: $nome)
                            .font(.body)
                            .foregroundColor(.white)
                            .bold()
                            .multilineTextAlignment(.center)
                        Text("Bem vindo, \(nome)")
                            .font(.body)
                            .foregroundColor(.white)
                            .bold()
                        NavigationLink(destination: modo3()){
                            Text("Acessar tela")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        }
                    .frame(width: 300,height: 200)
                    .background(Color.pink)
                    .cornerRadius(10)
                    
                        Spacer()
                }
            }
        }
    }
}

#Preview {
    modo2()
}
