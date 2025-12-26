//
//  lista.swift
//  desafio2
//
//  Created by Turma02-22 on 23/09/24.
//

import SwiftUI

struct lista: View {
    var body: some View {
        NavigationView{
        
            List {
                
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }
            .navigationTitle("List")
                
                
                
        }
    }
}

#Preview {
    lista()
}
