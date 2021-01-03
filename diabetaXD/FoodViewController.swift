//
//  FoodViewController.swift
//  diabetaXD
//
//  Created by Aluno Mack on 10/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController, UITableViewDelegate, UISearchBarDelegate, UITableViewDataSource {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var foods:[Food] = []
    var searchFood:[Food] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        
        do {
            let data = try Data(contentsOf: Bundle.main.url(forResource: "TACO", withExtension: "json")!)
            foods = try JSONDecoder().decode([Food].self, from: data)
            searchFood = foods
            tableView.reloadData()
        } catch { print(error) }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchFood.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell") as? FoodViewCell{
            cell.foodName.text = searchFood[indexPath.row].description
            cell.carbo.text = searchFood[indexPath.row].carbohydrate_g?.description
            return cell
        }
        return UITableViewCell()
    }
    
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchFood = foods.filter({ (aFood) -> Bool in
            (aFood.description?.contains(searchText))!
        })
        if searchFood.count < 1 {
            searchFood = foods
        }
        tableView.reloadData()
    }
    
    
    
}
