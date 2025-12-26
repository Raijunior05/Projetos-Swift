//
//  azul.swift
//  desafio2
//
//  Created by Turma02-22 on 23/09/24.
//

import SwiftUI

struct azul: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            VStack{
                 Spacer(minLength: 200)
                ZStack{
                    
                    
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 350,height: 350)
                    
                    Image(systemName: "paintbrush.pointed")
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 200,height: 200)
                }
                Spacer()
                Rectangle()
                    .ignoresSafeArea()
                    .frame(width: 400,height: 10)
                    .foregroundColor(.white)
                
            }
        }
    }
}

#Preview {
    azul()
}
