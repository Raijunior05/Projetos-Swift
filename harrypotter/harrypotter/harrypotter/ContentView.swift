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
            ZStack{
                
                Color.red11
                    .ignoresSafeArea()
                VStack{
                    Image("grif")
                        .resizable()
                        .frame(width: 400,height:
                                250)
                    
                        .ignoresSafeArea()
                        .frame(height: 301)
                    Spacer()
                    ScrollView{
                        ForEach(viewModel.chars){ item in
                            NavigationLink(destination: magoview(inf: item)){
                                HStack{
                                    AsyncImage(url: URL(string: item.image!)) { image in
                                        image
                                            .resizable()
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                            .padding()
                                    } placeholder: {
                                        ProgressView()
                                           
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                             .padding()
                                    }
                                  
                                    Text(item.name!)
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                    
                                }
                                
                            }
                        }
                    }
                    
                }
                .onAppear(){
                    viewModel.fetch()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
