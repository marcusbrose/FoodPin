//
//  Restaurant.swift
//  FoodPin
//
//  Created by Marcus Brose on 13.01.15.
//  Copyright (c) 2015 Marcus Brose. All rights reserved.
//

import Foundation
import CoreData

class Restaurant:NSManagedObject {
    
    @NSManaged var name:String!
    @NSManaged var type:String!
    @NSManaged var location:String!
    @NSManaged var image:NSData!
    @NSManaged var isVisited:NSNumber!
}