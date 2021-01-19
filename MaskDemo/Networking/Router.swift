//
//  Router.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/5/30.
//  Copyright © 2020 johnlin. All rights reserved.
//

import Foundation

class Router<EndPoint: EndPointType>: NetworkRouter {
    private var task: URLSessionTask?
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion) {
        let session = URLSession.shared
        let request = self.buildRequest(from: route)
        task = session.dataTask(with: request, completionHandler: { (data, response, error) in
            completion(data, response, error)
        })
        self.task?.resume()
    }
    
    func cancel() {
        self.task?.cancel()
    }
    
    fileprivate func buildRequest(from route: EndPoint) -> URLRequest {
        var request = URLRequest(url: route.baseURL.appendingPathComponent(route.path), cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 10.0)
        request.httpMethod = route.httpMethod.rawValue
        
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        return request
    }
}
