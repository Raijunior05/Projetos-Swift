//
//  ContentView.swift
//  countries
//
//  Created by Turma02-22 on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Image")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    Spacer(minLength: 100 )
                    VStack
                    {
                        Text("Escolha o continente:")
                            .foregroundColor(.black)
                            .font(.title)
                            .bold()
                        NavigationLink(destination: countriesview()){
                            HStack{
                                Image("europa")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                            
                                Text("Europa")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                Spacer()
                            }
                            
                        }
                        NavigationLink(destination: oceaniaview()){
                            HStack{
                                Image("oceania")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    
                                Text("Oceania")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                Spacer()
                            }
                            
                        }
                        NavigationLink(destination: africaview()){
                            HStack{
                                Image("africa")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                   
                                Text("África")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                Spacer()
                            }
                            
                        }
                        NavigationLink(destination: asiaview()){
                            HStack{
                                Image("asia")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                   
                                Text("Ásia")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                Spacer()
                            }
                            
                        }
                        NavigationLink(destination: americaview()){
                            HStack{
                                Image("america")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    
                                Text("America")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                Spacer()
                            }
                            
                        }
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
