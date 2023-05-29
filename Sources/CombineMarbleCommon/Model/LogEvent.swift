//
//  LogEvent.swift
//  
//
//  Created by Mataranga, Vlad on 07.05.2023.
//

import Foundation

public enum LogEventType: String, Codable {
    case subscribe, cancel, finish, error, event
}

public struct LogEvent<T: Codable>: Codable {
    
    public let id: UUID
    public let date: Date
    public let type: LogEventType
    public let content: T?
    
    public init(id: UUID, date: Date = Date(), type: LogEventType, content: T? = Optional<String>.none) {
        self.id = id
        self.date = date
        self.type = type
        self.content = content
    }
}
