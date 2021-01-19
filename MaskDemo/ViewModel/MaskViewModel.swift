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
        NetworkManager.shared.request(MaskAPI.getValue, model: MaskFeatures.self) { (result) in
            switch result {
            case .success(let content):
                self.data = content
                complete?(true)
            case .fail(let error):
                print(error)
                complete?(false)
            }
        }
    }
}
