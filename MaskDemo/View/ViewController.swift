//
//  ViewController.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/5/28.
//  Copyright © 2020 johnlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let viewModel = MaskViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(cellType: MaskTableViewCell.self)
        viewModel.fetchMask { _ in
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data?.features.count ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(with: MaskTableViewCell.self, for: indexPath)
        if let data = viewModel.data?.features[indexPath.row] {
            cell.setupWithViewData(viewData: MaskObject(country: data.properties.county, count: data.properties.mask_child))
        }
        return cell
    }
}
 
