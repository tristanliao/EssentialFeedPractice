//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Bang Chiang Liao on 2022/1/16.
//

import XCTest

class RemoteFeedLoader {
    func load() {}
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }

}
