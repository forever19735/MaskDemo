//
//  MaskList.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/6/3.
//  Copyright © 2020 johnlin. All rights reserved.
//

import Foundation

struct MaskFeatures: Decodable {
    let features: [Mask]
}

struct Mask: Decodable {
    let type: String
    let properties: MaskProperties
}

struct MaskProperties: Decodable {
    let county: String
    let mask_adult: Int?
    let mask_child: Int
}
