//
// TradeAccount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TradeAccount: Codable {

    public var id: UUID?
    public var login: Int64?


    
    public init(id: UUID?, login: Int64?) {
        self.id = id
        self.login = login
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(login, forKey: "login")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(UUID.self, forKey: "id")
        login = try container.decodeIfPresent(Int64.self, forKey: "login")
    }
}

