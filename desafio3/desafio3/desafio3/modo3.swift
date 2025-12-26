//
//  modo3.swift
//  desafio3
//
//  Created by Turma02-22 on 23/09/24.
//

import SwiftUI

struct modo3: View {
 
    var body: some View {
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
                    Text("")
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
    modo3()
}
