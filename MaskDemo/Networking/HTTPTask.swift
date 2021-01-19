//
//  HttpTask.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/5/29.
//  Copyright © 2020 johnlin. All rights reserved.
//

import Foundation

typealias HTTPHeaders = [String: String]

public enum HTTPTask {
    case requestPlain
    case requestParameters(bodyParameters: Parameters?, urlParameters: Parameters?)
}
