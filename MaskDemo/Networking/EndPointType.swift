//
//  EndPointType.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/5/29.
//  Copyright © 2020 johnlin. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
}
