//
//  viewoceania.swift
//  countries
//
//  Created by Turma02-22 on 30/09/24.
//

import Foundation
class oceania : ObservableObject{
    
    @Published var oceania1 : [Country] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "https://restcountries.com/v3.1/region/oceania")!){
            data, _, error in
            do{
                self.oceania1 = try JSONDecoder().decode([Country].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
