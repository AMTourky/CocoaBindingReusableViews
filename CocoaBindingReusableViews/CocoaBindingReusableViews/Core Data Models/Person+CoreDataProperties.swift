//
//  Person+CoreDataProperties.swift
//  CocoaBindingReusableViews
//
//  Created by AMTourky on 1/1/16.
//  Copyright © 2016 AMTourky. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Person {

    @NSManaged var firstName: String?
    @NSManaged var lastName: String?
    @NSManaged var dateOfBirth: NSDate?
    @NSManaged var gender: String?

}
