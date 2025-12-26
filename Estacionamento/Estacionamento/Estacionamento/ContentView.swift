//
//  ContentView.swift
//  Estacionamento
//
//  Created by Turma02-22 on 02/10/24.
//

import SwiftUI

//
//  ContentView.swift
//  harrypotter
//
//  Created by Turma02-22 on 27/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                ForEach(viewModel.chars,id:\.self){item in
                    NavigationLink(destination: carrosview(carros1: item)){
                        HStack{
                            Text(item.nomeEstacionamento!)
                                .foregroundColor(.black)
                        }
                            
                            
                        
                        
                    }
                }
            }
            
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}

