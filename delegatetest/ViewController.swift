//
//  ViewController.swift
//  delegatetest
//
//  Created by 成瀬美里 on 2016/12/23.
//  Copyright © 2016年 misato. All rights reserved.
//

import UIKit

class ViewController: UIViewController, testDelegate {

    @IBOutlet weak var delegateTableView: DelegateTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegateTableView.testdelegate = self
    }
    
    func test() {
        guard let url = URL(string: "https://www.youtube.com/watch?v=GNIkcjccZlw") else {
            return
        }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.openURL(url)
        }
    }
}

