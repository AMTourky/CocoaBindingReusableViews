//
//  Manager.swift
//  CocoaBindingReusableViews
//
//  Created by AMTourky on 1/1/16.
//  Copyright © 2016 AMTourky. All rights reserved.
//

import Foundation
import CoreData


class Manager: Person
{
    
    override var inspectorTabsInfo: [[String: String]]
    {
        var parentTabsInfo = [["tabTitle": "Manger Info", "tabNibName": "ManagerInspector"]]
        parentTabsInfo.appendContentsOf(super.inspectorTabsInfo)
        return parentTabsInfo
    }

}
