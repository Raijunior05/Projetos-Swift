//
//  ContentView.swift
//  desafio3
//
//  Created by Turma02-22 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        
        NavigationStack
        {
            ZStack
            {
                Color.color
                    .ignoresSafeArea()
                VStack
                {
                    
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    NavigationLink(destination: modo1())
                    {
                        Text("Modo 1")
                    }
                    .foregroundColor(.white)
                    .frame(width: 200, height: 60)
                    .background(Color.pink)
                    NavigationLink(destination: modo2())
                    {
                        Text("Modo 2")
                    }
                    .foregroundColor(.white)
                    .frame(width: 200, height: 60)
                    .background(Color.pink)
                    Button("Show Sheet") {
                                showingSheet.toggle()
                            }
                            .sheet(isPresented: $showingSheet) {
                                SheetView()
                            }
                    .foregroundColor(.white)
                    .frame(width: 200, height: 60)
                    .background(Color.pink)
                    Spacer()
                }
            }
        }
    }
}
struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack
        {
            Color.color
                .ignoresSafeArea()
            VStack
            {
                Button("Sheet View") {
                    dismiss()
                }
                .font(.title)
                .foregroundColor(.white)
                Spacer()
                VStack{
                    Text("Nome: Raimundo")
                        .font(.body)
                        .foregroundColor(.white)
                        .bold()
                    Text("Sobrenome: Junior")
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
    ContentView()
}
