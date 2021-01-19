//
//  NetworkRouter.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/5/29.
//  Copyright © 2020 johnlin. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> ()
protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType
    func request(_ router: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
