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
    @IBOutlet weak var fetchButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchButton.addTarget(self, action: #selector(didTapFetchButton), for: .touchUpInside)
    }
    @objc func didTapFetchButton() {
        let manager = PromiseManager()
        firstly {
            manager.fetchAPI()
        }.done { result in
            print("Promise")
            print(result[1].author)
            self.titleLabel.text = "\(result[0].title)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

