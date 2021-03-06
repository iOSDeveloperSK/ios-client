//
// TradesFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TradesFilter: Codable {

    public var investmentProgramId: UUID?
    public var dateFrom: Date?
    public var dateTo: Date?
    public var symbol: String?
    public var skip: Int?
    public var take: Int?


    
    public init(investmentProgramId: UUID?, dateFrom: Date?, dateTo: Date?, symbol: String?, skip: Int?, take: Int?) {
        self.investmentProgramId = investmentProgramId
        self.dateFrom = dateFrom
        self.dateTo = dateTo
        self.symbol = symbol
        self.skip = skip
        self.take = take
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(investmentProgramId, forKey: "investmentProgramId")
        try container.encodeIfPresent(dateFrom, forKey: "dateFrom")
        try container.encodeIfPresent(dateTo, forKey: "dateTo")
        try container.encodeIfPresent(symbol, forKey: "symbol")
        try container.encodeIfPresent(skip, forKey: "skip")
        try container.encodeIfPresent(take, forKey: "take")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        investmentProgramId = try container.decodeIfPresent(UUID.self, forKey: "investmentProgramId")
        dateFrom = try container.decodeIfPresent(Date.self, forKey: "dateFrom")
        dateTo = try container.decodeIfPresent(Date.self, forKey: "dateTo")
        symbol = try container.decodeIfPresent(String.self, forKey: "symbol")
        skip = try container.decodeIfPresent(Int.self, forKey: "skip")
        take = try container.decodeIfPresent(Int.self, forKey: "take")
    }
}

