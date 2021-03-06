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
    public var balance: Double


    
    public init(managerAccountId: UUID, trades: [OrderModel], balance: Double) {
        self.managerAccountId = managerAccountId
        self.trades = trades
        self.balance = balance
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(managerAccountId, forKey: "managerAccountId")
        try container.encode(trades, forKey: "trades")
        try container.encode(balance, forKey: "balance")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        managerAccountId = try container.decode(UUID.self, forKey: "managerAccountId")
        trades = try container.decode([OrderModel].self, forKey: "trades")
        balance = try container.decode(Double.self, forKey: "balance")
    }
}

