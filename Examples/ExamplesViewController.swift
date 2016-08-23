//
//  ExamplesViewController.swift
//  Examples
//
//  Created by 新井　雅人 on 2016/08/23.
//  Copyright © 2016年 C4. All rights reserved.
//

import UIKit

class ExamplesViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ExamplesViewController: UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(UITableViewCell.self, indexPath: indexPath)
        cell.textLabel?.text = "aaa"
        return cell
    }
}

extension ExamplesViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vc = UIStoryboard().instantiate(ViewController.self, storyboard: "Main")
        navigationController?.pushViewController(vc, animated: true)
    }
}
