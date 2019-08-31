//
//  ViewController.swift
//  EasyAutoLayoutSampler
//
//  Created by Fumiya Tanaka on 2019/08/31.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit
import EasyAutoLayout

class ViewController: EasyAutoLayoutViewController {

    @IBOutlet var tableView: UITableView!
    
    var dataList: [String] = [
        "気分は晴れ",
        "天気も晴れだといいな。",
        "Swift",
        "競技プログラミングやってみたい"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        tableViewCell.textLabel?.text = dataList[indexPath.row]
        return tableViewCell
    }
}
