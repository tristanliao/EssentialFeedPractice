//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Bang Chiang Liao on 2022/1/15.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
