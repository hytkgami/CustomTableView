//
//  ViewController.swift
//  CustomTableView
//
//  Created by hytkgami on 2018/04/25.
//  Copyright © 2018年 hytkgami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let customCell = "CustomCell"
    let rows = [
        [
            "img_url": "https://get.images.com/picture/1",
            "title": "sample 1"
        ],
        [
            "img_url": "https://get.images.com/picture/2",
            "title": "sample 2"
        ],
        [
            "img_url": "https://get.images.com/picture/3",
            "title": "sample 3"
        ],
        [
            "img_url": "https://get.images.com/picture/4",
            "title": "sample 4"
        ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.register(UINib(nibName: customCell, bundle: nil), forCellReuseIdentifier: customCell)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    // セルが選択されたときの挙動
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("tapped row at \(indexPath.row)")
    }
    
    // 描画するセルの個数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customCell) as! CustomCell
        cell.titleView.text = rows[indexPath.row]["title"]
        if (indexPath.row % 2 == 0) {
            cell.backgroundColor = UIColor.darkGray
        }
        return cell
    }

}
