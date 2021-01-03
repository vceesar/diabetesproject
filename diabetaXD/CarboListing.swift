//
//  CarbooListing.swift
//  diabetaXD
//
//  Created by Aluno Mack on 10/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import Foundation

class Carbo: Codable{
    var carboList:[CarboListing]?
}

class CarboListing:Codable{
    var qttCarbo: Int?
}
