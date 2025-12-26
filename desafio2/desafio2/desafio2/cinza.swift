//
//  cinza.swift
//  desafio2
//
//  Created by Turma02-22 on 23/09/24.
//

import SwiftUI

struct cinza: View {
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
            VStack{
                 Spacer(minLength: 200)
                ZStack{
                    
                    
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 350,height: 350)
                    
                    Image(systemName: "paintpalette")
                        .resizable()
                        .frame(width: 240,height: 200)
                        .foregroundColor(.gray)
                }
                Spacer()
                Rectangle()
                    .ignoresSafeArea()
                    .frame(width: 400,height: 1)
                    .foregroundColor(.white)
                
            }
        }
    }
}

#Preview {
    cinza()
}
