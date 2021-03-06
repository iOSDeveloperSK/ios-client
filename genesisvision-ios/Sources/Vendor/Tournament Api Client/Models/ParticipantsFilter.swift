//
// ParticipantsFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ParticipantsFilter: Codable {

    public var skip: Int?
    public var take: Int?
    public var name: String?


    
    public init(skip: Int?, take: Int?, name: String?) {
        self.skip = skip
        self.take = take
        self.name = name
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(skip, forKey: "skip")
        try container.encodeIfPresent(take, forKey: "take")
        try container.encodeIfPresent(name, forKey: "name")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        skip = try container.decodeIfPresent(Int.self, forKey: "skip")
        take = try container.decodeIfPresent(Int.self, forKey: "take")
        name = try container.decodeIfPresent(String.self, forKey: "name")
    }
}

