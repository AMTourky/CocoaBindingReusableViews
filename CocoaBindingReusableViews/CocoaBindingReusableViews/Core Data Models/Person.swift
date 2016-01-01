//
//  Person.swift
//  CocoaBindingReusableViews
//
//  Created by AMTourky on 1/1/16.
//  Copyright © 2016 AMTourky. All rights reserved.
//

import Foundation
import CoreData


class Person: NSManagedObject
{

    var inspectorTabsInfo: [[String: String]]
    {
        return [["tabTitle": "Basic Info", "tabNibName": "PersonInspector"]]
    }

}
