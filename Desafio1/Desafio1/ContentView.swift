//
//  ContentView.swift
//  Desafio1
//
//  Created by Turma02-22 on 18/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                    Rectangle()
                    .foregroundColor(Color.red)
                    .padding([.top, .leading])
                    .frame(width: 100, height: 100)
                    
    
                Spacer()
                    Rectangle()
                    .foregroundColor(Color.blue)
                    .padding([.top, .leading])
                    .frame(width: 100, height: 100)
            }
                Spacer()
            HStack{
                Rectangle()
                    .foregroundColor(Color.green)
                    .padding([.top, .leading])
                    .frame(width: 100, height: 100)
                Spacer()
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .padding([.top, .leading])
                    .frame(width: 100, height: 100)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


