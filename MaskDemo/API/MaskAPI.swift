//
//  MaskAPI.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/5/29.
//  Copyright © 2020 johnlin. All rights reserved.
//

import Foundation

enum MaskAPI {
    case getValue
}

extension MaskAPI: EndPointType {
    var baseURL: URL {
        guard let url = URL(string: "https://raw.githubusercontent.com") else {
            fatalError("baseURL could not be configured.")
        }
        return url
    }
    
    var path: String {
        switch self {
        case .getValue:
            return "/kiang/pharmacies/master/json/points.json"
        }
    }
    
    var httpMethod: HTTPMethod {
        return .get
    }
    
    var task: HTTPTask {
        return .requestPlain
    }
}
