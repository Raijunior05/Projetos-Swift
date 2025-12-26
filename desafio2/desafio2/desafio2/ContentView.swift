//
//  ContentView.swift
//  desafio2
//
//  Created by Turma02-22 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            rosa()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            
            azul()
           
                .tabItem()
                {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
          
            cinza()
          
                .tabItem()
                {
                    Label("Cinza",systemImage:"paintpalette")
                }
            
            lista()
            
                .tabItem()
                {
                    Label("Lista", systemImage: "list.bullet")
                }
            
            
        }
    }
}
#Preview {
    ContentView()
}
