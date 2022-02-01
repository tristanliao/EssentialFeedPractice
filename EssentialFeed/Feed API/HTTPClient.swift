//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Bang Chiang Liao on 2022/2/1.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL,
             completion: @escaping (HTTPClientResult) -> Void)
}
