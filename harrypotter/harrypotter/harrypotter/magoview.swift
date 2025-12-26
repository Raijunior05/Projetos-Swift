//
//  magoview.swift
//  harrypotter
//
//  Created by Turma02-22 on 27/09/24.
//

import SwiftUI

struct magoview: View {
    @State var inf: HarryPotter
    var body: some View {
        ZStack{
            Color.red11
                .ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: inf.image!)) { image in
                    image
                        .resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .padding()
                } placeholder: {
                    ProgressView()
                       
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                         .padding()
                }
                Text("Nome: \(inf.name!)")
                    .bold()
                    .foregroundColor(.white)
            //    if inf.alternateNames != nil {
                Text("Apelidos: \(inf.alternate_names!)")
                        .bold()
                        .foregroundColor(.white)
              //  }
                Text("Especie: \(inf.species!)")
                    .bold()
                    .foregroundColor(.white)
                Text("Genero: \(inf.gender!)")
                    .bold()
                    .foregroundColor(.white)
                Text("Casa: \(inf.house!)")
                    .bold()
                    .foregroundColor(.white)
            }
        }
    }
}

//#Preview {
//    magoview(inf: HarryPotter(id: "", name: "", alternateNames: [""], species: "", gender: "", house: "", dateOfBirth: "", yearOfBirth: 0, wizard: true, ancestry: "", eyeColour: "", hairColour: "", wand: Wand(wood: "", core: "", length: 0), patronus: "", hogwartsStudent: true, hogwartsStaff: true, actor: "", alternateActors: [""], alive: true, image: ""))
//}
