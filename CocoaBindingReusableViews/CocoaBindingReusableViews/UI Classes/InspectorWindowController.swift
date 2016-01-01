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
    @IBOutlet var tabView: NSTabView?
    
    func inspect(person: Person)
    {
        self.inspectedPerson = person
        self.removeAllTabItems()
        self.loadTabViewItemsForInspectedPerson()
    }
    
    func removeAllTabItems()
    {
        if self.tabView?.tabViewItems.count > 0
        {
            for tabViewItem in self.tabView!.tabViewItems
            {
                self.tabView?.removeTabViewItem(tabViewItem)
            }
        }
    }
    
    func loadTabViewItemsForInspectedPerson()
    {
        // TODO: load inspectors required by person
    }
}