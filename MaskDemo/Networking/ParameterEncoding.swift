//
//  ParameterEncoding.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/5/29.
//  Copyright © 2020 johnlin. All rights reserved.
//

import Foundation

public typealias Parameters = [String: Any]

public protocol ParameterEncoding {
    func encode(_ urlRequest: inout URLRequest, with parameters: Parameters) throws
}
