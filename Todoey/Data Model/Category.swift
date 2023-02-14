//
//  Category.swift
//  Todoey
//
//  Created by Riaz Alim on 14/11/2022.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
    
}
