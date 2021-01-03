//
//  ListaNome+CoreDataProperties.swift
//  diabetaXD
//
//  Created by Aluno Mack on 25/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//
//

import Foundation
import CoreData


extension ListaNome {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ListaNome> {
        return NSFetchRequest<ListaNome>(entityName: "ListaNome")
    }

    @NSManaged public var grama: Int64
    @NSManaged public var unidade: Int64

}
