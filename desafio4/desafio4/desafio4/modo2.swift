//
//  modo2.swift
//  desafio4
//
//  Created by Turma02-22 on 24/09/24.
//

import SwiftUI

struct modo2: View {
    @State var nome: String
    @State var autor: String
    var body: some View {
        ZStack
        {
            LinearGradient(colors: [.blue,.black], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Image("oasis")
                    .resizable()
                    .frame(width: 250,height: 250)
                Text("\(nome)")
                    .foregroundStyle(.white)
                    .foregroundColor(.white)
                Text("\(autor)")
                    .foregroundStyle(.white)
                    .foregroundColor(.white)
                Spacer()
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 40,height: 40)
                        .padding()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 40,height: 40)
                        .padding()
                    Image(systemName: "play.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 40,height: 40)
                        .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                    Image(systemName: "forward.end.fill")
                    
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 40,height: 40)
                        .padding()
                    Image(systemName: "repeat")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 40,height: 40)
                        .padding()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    modo2(nome: "jj", autor: "xx")
}
