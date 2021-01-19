//
//  MaskViewModel.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/6/22.
//  Copyright © 2020 johnlin. All rights reserved.
//

import Foundation

class MaskViewModel {
    var data: MaskFeatures?

    func fetchMask(complete: ((_ result: Bool) -> Void)? = nil) {
        NetworkManager.shared.request(MaskAPI.getValue, model: MaskFeatures.self) { (data, _) in
            self.data = data
            complete?(true)
            print(data)
        }
    }
}
