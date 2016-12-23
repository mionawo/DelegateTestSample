//
//  DelegateTableView.swift
//  delegatetest
//
//  Created by 成瀬美里 on 2016/12/23.
//  Copyright © 2016年 misato. All rights reserved.
//

import UIKit

class DelegateTableView: UITableView, UITableViewDataSource, UITableViewDelegate {

    //delegateを設定
    var testdelegate: testDelegate?
    
    // MARK: - Life Cycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.dataSource = self
        self.delegate = self
        
        let nib = UINib(nibName: "DelegateTableViewCell", bundle: nil)
        self.register(nib, forCellReuseIdentifier: "DelegateTableViewCell")
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.dequeueReusableCell(withIdentifier: "DelegateTableViewCell")!
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.deselectRow(at: indexPath, animated: true)

        self.testdelegate?.test()
    }
}
