//
//  InspectorWindowController.swift
//  CocoaBindingReusableViews
//
//  Created by AMTourky on 1/1/16.
//  Copyright © 2016 AMTourky. All rights reserved.
//

import Foundation
import Cocoa

class InspectorWindowController: NSWindowController
{
    var inspectedPerson: Person?
    
    func inspect(person: Person)
    {
        print("inspecting: ", person.firstName)
    }
}