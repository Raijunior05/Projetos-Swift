//
//  detalhes.swift
//  countries
//
//  Created by Turma02-22 on 30/09/24.
//

import SwiftUI

struct detalhes: View {
    @State var na: Country
    var body: some View {
        ZStack{
            AsyncImage(url: URL(string: na.flags!.png!)) { image in
                image
                    .resizable()
                    .ignoresSafeArea()
                    
            } placeholder: {
                ProgressView()
                   
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                     .padding()
            }
            VStack{
                Text("Populacao: \(na.population!)")
                    .bold()
                    .foregroundColor(.black)
                Text("Subregiao: \(na.subregion!)")
                    .bold()
                    .foregroundColor(.black)
                Text("Populacao:\(na.area!)")
                    .bold()
                    .foregroundColor(.black)
                if(na.independent!)
                {
                    Text("Pais Independente")
                        .bold()
                        .foregroundColor(.black)
                }
                else{
                    Text("Pais nao eh Independente")
                        .bold()
                        .foregroundColor(.black)
                }
            }
        }
    }
}
//#Preview {
//    detalhes()
//}
