//
//  ViewController.swift
//  MyCacheLibrary
//
//  Created by ShivadityaKr on 04/24/2022.
//  Copyright (c) 2022 ShivadityaKr. All rights reserved.
//

import UIKit
import MyCacheLibrary
class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let obj = MyClass()
        if #available(iOS 11.0, *) {
            label.textColor = MyClass.mycolor
        } else {
            // Fallback on earlier versions
        }
        obj.MyClass()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

