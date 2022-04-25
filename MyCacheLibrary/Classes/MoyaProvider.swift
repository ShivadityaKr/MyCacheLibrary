//
//  MoyaProvider.swift
//  MyCacheLibrary
//
//  Created by Shivaditya Kumar on 25/04/22.
//

import Foundation
import Moya

enum NewsAPIProvider {
    case fetchData(query: String)
}
extension NewsAPIProvider: TargetType {
    var baseURL: URL {
        switch self {
        case .fetchData(query: _):
            return URL(string: "https://newsapi.org/v2")!
        }
    }
    var path: String {
        switch self {
        case .fetchData(query: _):
            return "/everything"
        }
    }
    var method: Moya.Method {
        switch self {
        case .fetchData(query: _):
            return .get
        }
    }
    var task: Task {
        switch self {
        case .fetchData(query: let query):
            let parameters : [String: String] = [
                "q":query, "sortBy":"popularity", "apiKey":"b35c20997175431faa0d74edd14b42f1"
            ]
            return .requestParameters(parameters: parameters, encoding: URLEncoding.queryString)
        }
    }
    var sampleData: Data {
        return Data()
    }
    var headers: [String : String]? {
        return nil
    }
}

