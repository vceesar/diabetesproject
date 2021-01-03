//
//  FoodHandler.swift
//  diabetaXD
//
//  Created by Aluno Mack on 10/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import Foundation

class FoodHandler {
    
//    static func listFood(completion: @escaping([CarboListing])) -> ()){
//    guard let mainUrl = Bundle.main.url(forResource: "TACO", withExtension: "json") {
//    if error == nil {
//    if let queriedData = data{
//    if let carboList:carbo = try? JSONDecoder().decode(Carbo.self, from: queriedData){
//    if let res = Carbo,ist.stockList{
//    completion(res)
//    }
//    }
//    }
//    } else {
//    print(error?.localizedDescription ?? "Erro ao listar companhias")
//    }
//    }.resume()
//    }
    
    static func listFood(completion: @escaping (([CarboListing]) -> ())){
        guard let mainPath = Bundle.main.path(forResource: "TACO", ofType: "json") else { return }
        do{
            let data = try Data(contentsOf: URL(string: mainPath)!, options: .mappedIfSafe)
            _ = try JSONDecoder().decode([Food].self, from: data)
            
        } catch {
            print("erro")
        }
    }
}





