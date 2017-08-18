//
//  ViewController.swift
//  StretchyTableViewHeader
//
//  Created by naoya.watanabe on 2017/08/18.
//  Copyright © 2017年 naoya.watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIImageView!
    fileprivate let cellIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y > 0 { return }
        let height = self.tableView.tableHeaderView!.frame.height - scrollView.contentOffset.y
        self.imageView.frame = CGRect(x: self.imageView.frame.origin.x, y: scrollView.contentOffset.y, width: self.imageView.frame.width, height: height)
    }
}
