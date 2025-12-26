//
//  viewmodel.swift
//  harrypotter
//
//  Created by Turma02-22 on 27/09/24.
//

import Foundation
class ViewModel : ObservableObject{
    
    @Published var chars : [HarryPotter] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor")!){
            data, _, error in
            do{
                self.chars = try JSONDecoder().decode([HarryPotter].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
