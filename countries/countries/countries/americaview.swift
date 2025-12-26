//
//  americaview.swift
//  countries
//
//  Created by Turma02-22 on 30/09/24.
//

import SwiftUI

struct americaview: View {
    @StateObject var viewModel = america()
    var body: some View {
        NavigationStack{
            ZStack{
                
                
                VStack{
                    ScrollView{
                        ForEach(viewModel.america1, id:\.self){ item in
                            NavigationLink(destination: detalhes(na: item)){
                                HStack{
                                    AsyncImage(url: URL(string: item.flags!.png!)) { image in
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
                                    Text(item.name!.common!)
                                        .bold()
                                        .foregroundColor(.black)
                                    Spacer()
                                    
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
    }
}

//#Preview {
//    countriesview()
//}


