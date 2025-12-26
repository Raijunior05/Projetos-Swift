//
//  desafio3.swift
//  Desafio1
//
//  Created by Turma02-22 on 18/09/24.
//

import SwiftUI

struct desafio3: View {
    @State var show: Bool = false
    @State var name: String = "hhh"
    
    var body: some View {
        ZStack{
            Image("plano")
                .frame(width: 100,height: 100)
            
            VStack{
                    Text("Hello, \(name)!")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .font(.title)
                    TextField("Enter your name", text: $name)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                        
                /*Text("Bem vindo, LLL Dinho")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                    .foregroundColor(.white)
                Text("LLL Dinho")
                    .font(.body)
                    .foregroundColor(.white)*/
                
                Spacer()
                
                Image("foto3")
                    .resizable()
                    .frame(width: 150,height: 150)
                    .clipShape(Circle())
                Spacer()
                Button("ENTRAR: "){
                    show.toggle()
                }
                .alert("Alerta", isPresented: $show) {
                
                            Button("OK", role: .cancel) { }
                    
                
            }
            message:{
                Text("Vc eh o primeiro")
            }
                    
                        
                        
                    }
                    
                
                
            }
        }
    }

#Preview {
    desafio3()
}
