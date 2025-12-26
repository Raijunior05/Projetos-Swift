//
//  ContentView.swift
//  desafiomapa
//
//  Created by Turma02-22 on 25/09/24.
//

import SwiftUI
import MapKit
struct Location: Identifiable{
    let id = UUID()
    var name: String
    var desc: String
    var cord: CLLocationCoordinate2D
    var flag: String
}
struct ContentView: View {
    @State var location = [Location(name: "Petrolina", desc: "O município possui uma área de 4 561,87 km², É o maior município em extensão territorial de Pernambuco. Situa-se a 09º 23' 55 de latitude sul e 40º 30' 03 de longitude oeste, estando a 712 km a oeste da capital estadual.", cord: CLLocationCoordinate2D(latitude: -9.3731961, longitude: -40.5024661), flag: "data:image/png;base64,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"),Location(name: "Estados Unidos", desc: "Estados Unidos ou, oficialmente, Estados Unidos da América são a nação mais influente do mundo. Considerada uma potência, exerce influência sobre diversas regiões do planeta. O país encontra-se no continente americano, no subcontinente América do Norte. Limita-se ao norte com o Canadá e ao sul com o México.", cord: CLLocationCoordinate2D(latitude: 38.8939059, longitude: -77.1793865), flag: "data:image/png;base64,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"),Location(name: "Japao", desc: "O Japão é um país insular localizado no extremo leste da Ásia, sendo banhado pelo oceano Pacífico. O território japonês, que possui um total de 377.930 km² de área, é constituído por um arquipélago formado por milhares de ilhas que se estendem de nordeste a noroeste por, aproximadamente, 2400 km.", cord: CLLocationCoordinate2D(latitude: 31.675147, longitude: 115.7167953), flag: "https://s4.static.brasilescola.uol.com.br/be/2022/11/bandeira-do-japao.jpg")]
    @State var locc1:Double = 31.675147
    @State var locc2:Double = 115.7167953
    @State var pos = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 31.675147, longitude: 115.7167953), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    @State var show: Bool = false
    @State var titulo:String = "Japão"
    var body: some View {
        NavigationStack{
            ZStack{
                Map(position: $pos){
                    ForEach(location){item in
                        Annotation(item.name,coordinate:item.cord){
                            Image(systemName: "mappin.and.ellipse")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 50,height: 50)
                                .onTapGesture {
                                    show.toggle()
                                }
                                .sheet(isPresented: $show){
                                    
                                    SheetView(nome1: item.name, flag1: item.flag, desc1: item.desc)
                                }
                        }
                        
                    }
                }
                .ignoresSafeArea()
                VStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.fundo)
                            .ignoresSafeArea()
                            .frame(width: 390,height: 80)
                        VStack{
                            Text("World Map")
                                .font(.title)
                                .bold()
                            Text(titulo)
                                .font(.title)
                        }
                    }
                    Spacer()
                    ScrollView(.horizontal){
                        HStack{
                            Button(action: {
                                 pos = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -9.3731961, longitude: -40.5024661), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                                titulo = "Petrolina"
                            }){
                                Image("petrolina")
                                    
                            }
                            Button(action: {
                                 pos = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 38.8939059, longitude: -77.1793865), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                                titulo = "EUA"
                            }){
                                Image("eua")
                                    
                            }
                            Button(action: {
                                 pos = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 31.675147, longitude: 115.7167953), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                                titulo = "Japão"
                            }){
                                Image("japao")
                                    
                            }

                            

                            
                            
                        }
                    }
                }
                
            }
        }
    }
    struct SheetView: View {
        @Environment(\.dismiss) var dismiss
        @State var nome1: String
        @State var flag1: String
        @State var desc1: String
        
        var body: some View {
            ZStack
            {
                Color.gray
                    .ignoresSafeArea()
                VStack
                {
                    Button("Voltar") {
                        dismiss()
                    }
                    .font(.title)
                    .bold()
                    .foregroundColor(.blue)
                    Spacer()
                    VStack{
                        Text(nome1)
                            .font(.body)
                            .foregroundColor(.black)
                            .bold()
                        Spacer()
                        AsyncImage(url: URL(string: flag1))
                            .frame(width: 30, height: 30)
                            .padding()
                        Spacer()
                        Text(desc1)
                            .font(.body)
                            .foregroundColor(.black)
                            .bold()
                    }
                }
                
            }
        }
    }
}


#Preview {
    ContentView()
}
