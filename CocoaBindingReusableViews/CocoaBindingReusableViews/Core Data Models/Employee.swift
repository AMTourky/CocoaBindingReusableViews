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
        var parentTabsInfo = [["tabTitle": "Employee Info", "tabNibName": "EmployeeInspector"]]
        parentTabsInfo.appendContentsOf(super.inspectorTabsInfo)
        return parentTabsInfo
    }
}
