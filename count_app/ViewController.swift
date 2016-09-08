//
//  ViewController.swift
//  count_app
//
//  Created by 森尻尭之 on 2016/09/08.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
    
    var firstView: FirstViewController!
    var secondView: SecondViewController!
    var thirdView: ThirdViewController!
    var fourthView: FourthViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstView = FirstViewController()
        secondView = SecondViewController()
        thirdView = ThirdViewController()
        fourthView = FourthViewController()
        
        
        firstView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
        secondView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 2)
        thirdView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Favorites, tag: 3)
        fourthView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.History, tag: 4)
        
        let myTabs = NSArray(objects: firstView!, secondView!, thirdView!, fourthView!)
        
        self.setViewControllers(myTabs as! [UIViewController], animated: false)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

