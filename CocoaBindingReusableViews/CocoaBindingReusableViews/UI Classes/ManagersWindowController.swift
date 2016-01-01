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
    @IBOutlet var managersArrCon: NSArrayController?
    @IBOutlet var employeesArrCon: NSArrayController?
    
    var managersContext = 0
    var employeesContext = 1
    
    override func awakeFromNib()
    {
        self.inspector = InspectorWindowController(windowNibName: "Inspector")
        self.inspector?.showWindow(self)
        
        self.managersArrCon?.addObserver(self, forKeyPath: "selection", options: .Old, context: &managersContext)
        self.employeesArrCon?.addObserver(self, forKeyPath: "selection", options: .Old, context: &employeesContext)
    }

    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
    {
        if let selectedManager = self.managersArrCon?.selectedObjects.last as? Manager where context == &managersContext
        {
            self.inspector?.inspect(selectedManager)
        }
        else if let selectedEmployee = self.employeesArrCon?.selectedObjects.last as? Employee where context == &employeesContext
        {
            self.inspector?.inspect(selectedEmployee)
        }
    }
    
}