//
//  ManagersWindowController.swift
//  CocoaBindingReusableViews
//
//  Created by AMTourky on 1/1/16.
//  Copyright © 2016 AMTourky. All rights reserved.
//

import Foundation
import Cocoa

class ManagersWindowController: NSWindowController
{
    var inspector: InspectorWindowController?
    
    override func awakeFromNib()
    {
        self.inspector = InspectorWindowController(windowNibName: "Inspector")
        self.inspector?.showWindow(self)
    }
}