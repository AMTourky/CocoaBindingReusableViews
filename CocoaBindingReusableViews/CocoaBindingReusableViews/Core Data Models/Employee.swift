//
//  Employee.swift
//  CocoaBindingReusableViews
//
//  Created by AMTourky on 1/1/16.
//  Copyright © 2016 AMTourky. All rights reserved.
//

import Foundation
import CoreData


class Employee: Person
{
    
    override var inspectorTabsInfo: [[String: String]]
    {
        var parentTabsInfo = super.inspectorTabsInfo
        parentTabsInfo.append(["tabTitle": "Employee Info", "tabNibName": "EmployeeInspector"])
        return parentTabsInfo
    }
}
