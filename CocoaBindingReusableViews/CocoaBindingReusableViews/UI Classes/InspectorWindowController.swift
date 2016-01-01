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
        guard let theInspectedPerson = self.inspectedPerson
        else { return }
        
        for tabInfo in theInspectedPerson.inspectorTabsInfo
        {
            if let theNibName = tabInfo["tabNibName"], theTabTitle = tabInfo["tabTitle"]
            {
                let newTabViewItem = NSTabViewItem(identifier: "")
                newTabViewItem.label = theTabTitle
                
                self.populateTabViewItem(newTabViewItem, fromNibName: theNibName)
                
                self.tabView?.addTabViewItem(newTabViewItem)
            }
        }
    }
    
    func populateTabViewItem(tabViewItem: NSTabViewItem, fromNibName nibName: String)
    {
        var topLevelObjects: NSArray?
        NSBundle.mainBundle().loadNibNamed(nibName, owner: self, topLevelObjects: &topLevelObjects)
        
        guard let theTopLevelObjects = topLevelObjects
        else { return }
        
        for object in theTopLevelObjects
        {
            if let theTabView = object as? NSView
            {
                tabViewItem.view = theTabView
            }
            else if let theTabObjectController = object as? NSObjectController
            {
                theTabObjectController.content = self.inspectedPerson
            }
        }
    }
    
}