//
//  ViewController.swift
//  pagemenu_sample
//
//  Created by adeonhy on 2015/07/08.
//  Copyright (c) 2015年 wmegane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageMenu: CAPSPageMenu?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var controllerArray: [UIViewController] = []
        var controller1 = self.storyboard?.instantiateViewControllerWithIdentifier("tableView") as! UIViewController
        var controller2 = self.storyboard?.instantiateViewControllerWithIdentifier("tableView") as! UIViewController
        var controller3 = self.storyboard?.instantiateViewControllerWithIdentifier("tableView") as! UIViewController
        controllerArray.append(controller1)
        controllerArray.append(controller2)
        controllerArray.append(controller3)
        
        var parameters: [CAPSPageMenuOption] = [
            .MenuItemSeparatorWidth(4.3),
            .UseMenuLikeSegmentedControl(true),
            .MenuItemSeparatorPercentageHeight(0.1),
            .SelectionIndicatorColor(UIColor.cyanColor())
        ]
        
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 20.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        self.view.addSubview(pageMenu!.view)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

