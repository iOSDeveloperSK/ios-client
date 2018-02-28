//
// NewTradeEvent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class NewTradeEvent: Codable {

    public var managerAccountId: UUID
    public var trades: [OrderModel]


    
    public init(managerAccountId: UUID, trades: [OrderModel]) {
        self.managerAccountId = managerAccountId
        self.trades = trades
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(managerAccountId, forKey: "managerAccountId")
        try container.encode(trades, forKey: "trades")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        managerAccountId = try container.decode(UUID.self, forKey: "managerAccountId")
        trades = try container.decode([OrderModel].self, forKey: "trades")
    }
}

