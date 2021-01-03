//
//  ListaCarb+CoreDataProperties.swift
//  diabetaXD
//
//  Created by Aluno Mack on 25/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//
//

import Foundation
import CoreData


extension ListaCarb {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ListaCarb> {
        return NSFetchRequest<ListaCarb>(entityName: "ListaCarb")
    }

    @NSManaged public var carboidrato: Int64

}
