//
//  viewasia.swift
//  countries
//
//  Created by Turma02-22 on 30/09/24.
//

import Foundation
class asia : ObservableObject{
    
    @Published var asia1 : [Country] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "https://restcountries.com/v3.1/region/asia")!){
            data, _, error in
            do{
                self.asia1 = try JSONDecoder().decode([Country].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
