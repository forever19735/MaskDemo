//
//  ConfigCell.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/6/22.
//  Copyright © 2020 johnlin. All rights reserved.
//

import Foundation

protocol ConfigCell {
    associatedtype ViewData
    func setupWithViewData(viewData: ViewData)
}

protocol ConfigCellType {
    var cellID: String { get }
    var cellClass: AnyClass { get }
    func updateCell<T>(cell: T)
}
