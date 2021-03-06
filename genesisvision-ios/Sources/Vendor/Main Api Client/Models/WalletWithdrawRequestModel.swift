//
// WalletWithdrawRequestModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class WalletWithdrawRequestModel: Codable {

    public enum Currency: String, Codable { 
        case undefined = "Undefined"
        case gvt = "GVT"
        case eth = "ETH"
        case btc = "BTC"
        case usd = "USD"
        case eur = "EUR"
    }
    public var currency: Currency
    public var amount: Double
    public var blockchainAddress: String


    
    public init(currency: Currency, amount: Double, blockchainAddress: String) {
        self.currency = currency
        self.amount = amount
        self.blockchainAddress = blockchainAddress
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(currency, forKey: "currency")
        try container.encode(amount, forKey: "amount")
        try container.encode(blockchainAddress, forKey: "blockchainAddress")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        currency = try container.decode(Currency.self, forKey: "currency")
        amount = try container.decode(Double.self, forKey: "amount")
        blockchainAddress = try container.decode(String.self, forKey: "blockchainAddress")
    }
}

