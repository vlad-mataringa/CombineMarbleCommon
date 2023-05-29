//
//  Codable+Extension.swift
//  
//
//  Created by Mataranga, Vlad on 07.05.2023.
//

import Foundation

public extension Decodable {
    static func decode(data: Data) throws -> Self {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        return try decoder.decode(Self.self, from: data)
    }
}

public extension Encodable {
    func encode() throws -> Data {
            let encoder = JSONEncoder()
            encoder.outputFormatting = JSONEncoder.OutputFormatting.withoutEscapingSlashes
            encoder.dateEncodingStrategy = .secondsSince1970
            return try encoder.encode(self)
        }
    
    func json() throws -> String {
        try String.decode(data: try encode() )
    }
}
