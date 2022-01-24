//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Bang Chiang Liao on 2022/1/15.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
