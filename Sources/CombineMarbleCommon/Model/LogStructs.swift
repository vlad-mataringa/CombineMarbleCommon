//
//  LogStructs.swift
//  
//
//  Created by Mataranga, Vlad on 07.05.2023.
//

import Foundation

public enum PublisherType: String, Codable {
    case raw
    case handleEvents
    case map
    case filter
    case combineLatest
    case merge
}

public struct ValueLog: Codable {
    public let index: Int
    public let value: String?
    
    public init(index: Int, value: String?) {
        self.index = index
        self.value = value
    }
}

public struct SubscriotionLog: Codable {
    public let tag: String
    public let list: [SubscriotionTreeLog]
    
    public init(tag: String, list: [SubscriotionTreeLog]) {
        self.tag = tag
        self.list = list
    }
}

public struct SubscriotionTreeLog: Codable {
    public let index: Int
    public let type: PublisherType
    
    public init(index: Int, type: PublisherType) {
        self.index = index
        self.type = type
    }
}

