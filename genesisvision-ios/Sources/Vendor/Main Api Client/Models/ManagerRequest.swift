//
// ManagerRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ManagerRequest: Codable {

    public enum Currency: String, Codable { 
        case undefined = "Undefined"
        case gvt = "GVT"
        case eth = "ETH"
        case btc = "BTC"
        case usd = "USD"
        case eur = "EUR"
    }
    public var userId: UUID?
    public var requestId: UUID?
    public var name: String?
    public var email: String?
    public var currency: Currency?
    public var password: String?
    public var depositInUsd: Double?


    
    public init(userId: UUID?, requestId: UUID?, name: String?, email: String?, currency: Currency?, password: String?, depositInUsd: Double?) {
        self.userId = userId
        self.requestId = requestId
        self.name = name
        self.email = email
        self.currency = currency
        self.password = password
        self.depositInUsd = depositInUsd
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(userId, forKey: "userId")
        try container.encodeIfPresent(requestId, forKey: "requestId")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(email, forKey: "email")
        try container.encodeIfPresent(currency, forKey: "currency")
        try container.encodeIfPresent(password, forKey: "password")
        try container.encodeIfPresent(depositInUsd, forKey: "depositInUsd")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        userId = try container.decodeIfPresent(UUID.self, forKey: "userId")
        requestId = try container.decodeIfPresent(UUID.self, forKey: "requestId")
        name = try container.decodeIfPresent(String.self, forKey: "name")
        email = try container.decodeIfPresent(String.self, forKey: "email")
        currency = try container.decodeIfPresent(Currency.self, forKey: "currency")
        password = try container.decodeIfPresent(String.self, forKey: "password")
        depositInUsd = try container.decodeIfPresent(Double.self, forKey: "depositInUsd")
    }
}

