//
//  ContentView.swift
//  desafio4
//
//  Created by Turma02-22 on 24/09/24.
//

import SwiftUI
struct song: Identifiable{
    var id: Int
    var nome: String
    var artist: String
    var capa: String
}

struct ContentView: View {
    @State var songs = [song(id: 1, nome: "Live Forever", artist: "oasis", capa:"https://m.media-amazon.com/images/I/914tqtuLcoL._UF894,1000_QL80_.jpg"),song(id: 2, nome: "Columbia", artist: "oasis", capa: "https://m.media-amazon.com/images/I/914tqtuLcoL._UF894,1000_QL80_.jpg"),song(id: 3, nome: "Slide Away", artist: "oasis", capa: "https://m.media-amazon.com/images/I/914tqtuLcoL._UF894,1000_QL80_.jpg"),song(id: 4, nome: "Cigarretes & alcohol", artist: "oasis", capa: "https://m.media-amazon.com/images/I/914tqtuLcoL._UF894,1000_QL80_.jpg"),song(id: 5, nome: "Shakermaker", artist: "oasis", capa: "https://m.media-amazon.com/images/I/914tqtuLcoL._UF894,1000_QL80_.jpg"),song(id: 6, nome: "Up in the Sky", artist: "oasis", capa: "https://m.media-amazon.com/images/I/914tqtuLcoL._UF894,1000_QL80_.jpg"),song(id: 7, nome: "Supersonic", artist: "oasis", capa: "https://m.media-amazon.com/images/I/914tqtuLcoL._UF894,1000_QL80_.jpg"),song(id: 8, nome: "Married With Children", artist: "oasis", capa: "https://m.media-amazon.com/images/I/914tqtuLcoL._UF894,1000_QL80_.jpg"),song(id: 9, nome: "Bring It on Down" , artist: "oasis", capa: "https://m.media-amazon.com/images/I/914tqtuLcoL._UF894,1000_QL80_.jpg"),song(id: 10, nome: "Digsy's Dinner", artist: "oasis", capa: "https://m.media-amazon.com/images/I/914tqtuLcoL._UF894,1000_QL80_.jpg")
    ]
    var body: some View {
        NavigationStack
        {
            ZStack
            {
                LinearGradient(colors: [.blue,.black], startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack {
                        Spacer(minLength: 100)
                        Image("oasis")
                        
                            .resizable()
                            .frame(width: 250, height: 250)
                        Spacer()
                        HStack(){
                            Text("Definitely Maybe")
                                .foregroundColor(.white)
                                .font(.title)
                                .bold()
                                .multilineTextAlignment(.leading)
                                .padding()
                            Spacer()
                        }
                        HStack{
                            Image("irmaos")
                                .resizable()
                                .frame(width: 40,height: 30)
                                .padding()
                            Text("Oasis")
                                .foregroundColor(.white)
                                .font(.title)
                                .bold()
                            Spacer()
                            
                        }
                        ForEach(songs){ item in
                            NavigationLink(destination: modo2(nome: item.nome, autor: item.artist)){
                                HStack{
//                                    Image("oasis")
//                                        .resizable()
//                                        .frame(width: 30,height: 30)
//                                        .padding()
                                    AsyncImage(url: URL(string: item.capa)) { image in
                                        image
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .padding()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    VStack{
                                        HStack{
                                            Text(item.nome)
                                                .font(.body)
                                                .bold()
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.leading)
                                        Spacer()}
                                        HStack{
                                            
                                            Text(item.artist)
                                                .font(.body)
                                                .bold()
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                        
                                    
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                        .padding()
                                    
                                }
                            }
                            
                        }
                        Spacer()
                        HStack
                        {
                            
                            Text("Sugeridos")
                                .font(.title)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                            Spacer()
                        }
                        ScrollView(.horizontal){
                            HStack(spacing: 40){
                                VStack{
                                    Image("1")
                                        .resizable()
                                        .frame(width: 250,height: 250)
                                    Text("1 - One")
                                        .foregroundStyle(.white)
                                        .foregroundColor(.white)
                                }
                                VStack{
                                    Image("2")
                                        .resizable()
                                        .frame(width: 250,height: 250)
                                    Text("2 - Two")
                                        .foregroundStyle(.white)
                                        .foregroundColor(.white)
                                }
                                VStack{
                                    Image("3")
                                        .resizable()
                                        .frame(width: 250,height: 250)
                                    Text("3 - Three")
                                        .foregroundStyle(.white)
                                        .foregroundColor(.white)
                                }
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
