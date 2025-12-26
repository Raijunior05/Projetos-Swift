//
//  rosa.swift
//  desafio2
//
//  Created by Turma02-22 on 23/09/24.
//

import SwiftUI

struct rosa: View {
    var body: some View {
        
        
        ZStack{
            Color.pink
                .ignoresSafeArea()
            VStack{
                 Spacer(minLength: 200)
                ZStack{
                    
                    
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 350,height: 350)
                    
                    Image(systemName: "paintbrush")
                        .resizable()
                        .foregroundColor(.pink)
                        .frame(width: 200,height: 200)
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
    rosa()
}
