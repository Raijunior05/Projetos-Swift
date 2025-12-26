//
//  carrosview.swift
//  Estacionamento
//
//  Created by Turma02-22 on 02/10/24.
//

import SwiftUI

struct carrosview: View {
    @State var carros1: Estacionamento
    var body: some View {
        ForEach(carros1.carros,id: \.self){ item in
            HStack{
                AsyncImage(url: URL(string: item!.foto!)) { image in
                    image
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding()
                } placeholder: {
                    ProgressView()
                    
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        .padding()
                }
                VStack{
                    Text("Cor: \(item!.cor!)")
                    Text("Ano: \(item!.ano!)")
                    Text("Modelo:\(item!.modelo!)")
                    Text("Preco:\(item!.preco!)")
                }
            }
        }
      
    }
}

//#Preview {
//    carrosview()
//}
