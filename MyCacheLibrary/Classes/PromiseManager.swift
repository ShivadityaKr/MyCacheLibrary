//
//  PromiseManager.swift
//  MyCacheLibrary
//
//  Created by Shivaditya Kumar on 25/04/22.
//

import Foundation
import Moya
import PromiseKit
class PromiseManager: NSObject {
    func fetchAPI() -> Promise<[Article]> {
        return Promise { seal in
            let provider = MoyaProvider<NewsAPIProvider>.init()
            provider.request(.fetchData(query: "india")) { result in
                switch result {
                case .success(let response):
                    do {
                        let data = try JSONDecoder().decode(ResponseElement.self, from: response.data)
                        seal.fulfill(data.articles)
                    } catch let error {
                        seal.reject(error)
                    }
                case .failure(let error):
                    seal.reject(error)
                }
            }
        }
    }
}
