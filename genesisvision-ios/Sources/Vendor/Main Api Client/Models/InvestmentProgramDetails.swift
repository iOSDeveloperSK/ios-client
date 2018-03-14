//
// InvestmentProgramDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class InvestmentProgramDetails: Codable {

    public enum Currency: String, Codable { 
        case undefined = "Undefined"
        case gvt = "GVT"
        case eth = "ETH"
        case btc = "BTC"
        case usd = "USD"
        case eur = "EUR"
    }
    public enum ProfitTotalChange: String, Codable { 
        case unchanged = "Unchanged"
        case up = "Up"
        case down = "Down"
    }
    public enum VolumeTotalChange: String, Codable { 
        case unchanged = "Unchanged"
        case up = "Up"
        case down = "Down"
    }
    public var id: UUID?
    public var title: String?
    public var description: String?
    public var level: Int?
    public var login: String?
    public var logo: String?
    public var balance: Double?
    public var ownBalance: Double?
    public var currency: Currency?
    public var investedTokens: Double?
    public var tradesCount: Int?
    public var investorsCount: Int?
    public var periodDuration: Int?
    public var startOfPeriod: Date?
    public var endOfPeriod: Date?
    public var profitAvg: Double?
    public var profitTotal: Double?
    public var profitAvgPercent: Double?
    public var profitTotalPercent: Double?
    public var profitTotalChange: ProfitTotalChange?
    public var volumeTotal: Double?
    public var volumeAvg: Double?
    public var volumeTotalChange: VolumeTotalChange?
    public var availableInvestment: Double?
    public var feeSuccess: Double?
    public var feeManagement: Double?
    public var ipfsHash: String?
    public var tradeIpfsHash: String?
    public var isEnabled: Bool?
    public var chart: [Chart]?
    public var manager: ProfilePublicViewModel?
    public var hasNewRequests: Bool?
    public var isHistoryEnable: Bool?
    public var isInvestEnable: Bool?
    public var isWithdrawEnable: Bool?
    public var isOwnProgram: Bool?


    
    public init(id: UUID?, title: String?, description: String?, level: Int?, login: String?, logo: String?, balance: Double?, ownBalance: Double?, currency: Currency?, investedTokens: Double?, tradesCount: Int?, investorsCount: Int?, periodDuration: Int?, startOfPeriod: Date?, endOfPeriod: Date?, profitAvg: Double?, profitTotal: Double?, profitAvgPercent: Double?, profitTotalPercent: Double?, profitTotalChange: ProfitTotalChange?, volumeTotal: Double?, volumeAvg: Double?, volumeTotalChange: VolumeTotalChange?, availableInvestment: Double?, feeSuccess: Double?, feeManagement: Double?, ipfsHash: String?, tradeIpfsHash: String?, isEnabled: Bool?, chart: [Chart]?, manager: ProfilePublicViewModel?, hasNewRequests: Bool?, isHistoryEnable: Bool?, isInvestEnable: Bool?, isWithdrawEnable: Bool?, isOwnProgram: Bool?) {
        self.id = id
        self.title = title
        self.description = description
        self.level = level
        self.login = login
        self.logo = logo
        self.balance = balance
        self.ownBalance = ownBalance
        self.currency = currency
        self.investedTokens = investedTokens
        self.tradesCount = tradesCount
        self.investorsCount = investorsCount
        self.periodDuration = periodDuration
        self.startOfPeriod = startOfPeriod
        self.endOfPeriod = endOfPeriod
        self.profitAvg = profitAvg
        self.profitTotal = profitTotal
        self.profitAvgPercent = profitAvgPercent
        self.profitTotalPercent = profitTotalPercent
        self.profitTotalChange = profitTotalChange
        self.volumeTotal = volumeTotal
        self.volumeAvg = volumeAvg
        self.volumeTotalChange = volumeTotalChange
        self.availableInvestment = availableInvestment
        self.feeSuccess = feeSuccess
        self.feeManagement = feeManagement
        self.ipfsHash = ipfsHash
        self.tradeIpfsHash = tradeIpfsHash
        self.isEnabled = isEnabled
        self.chart = chart
        self.manager = manager
        self.hasNewRequests = hasNewRequests
        self.isHistoryEnable = isHistoryEnable
        self.isInvestEnable = isInvestEnable
        self.isWithdrawEnable = isWithdrawEnable
        self.isOwnProgram = isOwnProgram
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(title, forKey: "title")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(level, forKey: "level")
        try container.encodeIfPresent(login, forKey: "login")
        try container.encodeIfPresent(logo, forKey: "logo")
        try container.encodeIfPresent(balance, forKey: "balance")
        try container.encodeIfPresent(ownBalance, forKey: "ownBalance")
        try container.encodeIfPresent(currency, forKey: "currency")
        try container.encodeIfPresent(investedTokens, forKey: "investedTokens")
        try container.encodeIfPresent(tradesCount, forKey: "tradesCount")
        try container.encodeIfPresent(investorsCount, forKey: "investorsCount")
        try container.encodeIfPresent(periodDuration, forKey: "periodDuration")
        try container.encodeIfPresent(startOfPeriod, forKey: "startOfPeriod")
        try container.encodeIfPresent(endOfPeriod, forKey: "endOfPeriod")
        try container.encodeIfPresent(profitAvg, forKey: "profitAvg")
        try container.encodeIfPresent(profitTotal, forKey: "profitTotal")
        try container.encodeIfPresent(profitAvgPercent, forKey: "profitAvgPercent")
        try container.encodeIfPresent(profitTotalPercent, forKey: "profitTotalPercent")
        try container.encodeIfPresent(profitTotalChange, forKey: "profitTotalChange")
        try container.encodeIfPresent(volumeTotal, forKey: "volumeTotal")
        try container.encodeIfPresent(volumeAvg, forKey: "volumeAvg")
        try container.encodeIfPresent(volumeTotalChange, forKey: "volumeTotalChange")
        try container.encodeIfPresent(availableInvestment, forKey: "availableInvestment")
        try container.encodeIfPresent(feeSuccess, forKey: "feeSuccess")
        try container.encodeIfPresent(feeManagement, forKey: "feeManagement")
        try container.encodeIfPresent(ipfsHash, forKey: "ipfsHash")
        try container.encodeIfPresent(tradeIpfsHash, forKey: "tradeIpfsHash")
        try container.encodeIfPresent(isEnabled, forKey: "isEnabled")
        try container.encodeIfPresent(chart, forKey: "chart")
        try container.encodeIfPresent(manager, forKey: "manager")
        try container.encodeIfPresent(hasNewRequests, forKey: "hasNewRequests")
        try container.encodeIfPresent(isHistoryEnable, forKey: "isHistoryEnable")
        try container.encodeIfPresent(isInvestEnable, forKey: "isInvestEnable")
        try container.encodeIfPresent(isWithdrawEnable, forKey: "isWithdrawEnable")
        try container.encodeIfPresent(isOwnProgram, forKey: "isOwnProgram")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(UUID.self, forKey: "id")
        title = try container.decodeIfPresent(String.self, forKey: "title")
        description = try container.decodeIfPresent(String.self, forKey: "description")
        level = try container.decodeIfPresent(Int.self, forKey: "level")
        login = try container.decodeIfPresent(String.self, forKey: "login")
        logo = try container.decodeIfPresent(String.self, forKey: "logo")
        balance = try container.decodeIfPresent(Double.self, forKey: "balance")
        ownBalance = try container.decodeIfPresent(Double.self, forKey: "ownBalance")
        currency = try container.decodeIfPresent(Currency.self, forKey: "currency")
        investedTokens = try container.decodeIfPresent(Double.self, forKey: "investedTokens")
        tradesCount = try container.decodeIfPresent(Int.self, forKey: "tradesCount")
        investorsCount = try container.decodeIfPresent(Int.self, forKey: "investorsCount")
        periodDuration = try container.decodeIfPresent(Int.self, forKey: "periodDuration")
        startOfPeriod = try container.decodeIfPresent(Date.self, forKey: "startOfPeriod")
        endOfPeriod = try container.decodeIfPresent(Date.self, forKey: "endOfPeriod")
        profitAvg = try container.decodeIfPresent(Double.self, forKey: "profitAvg")
        profitTotal = try container.decodeIfPresent(Double.self, forKey: "profitTotal")
        profitAvgPercent = try container.decodeIfPresent(Double.self, forKey: "profitAvgPercent")
        profitTotalPercent = try container.decodeIfPresent(Double.self, forKey: "profitTotalPercent")
        profitTotalChange = try container.decodeIfPresent(ProfitTotalChange.self, forKey: "profitTotalChange")
        volumeTotal = try container.decodeIfPresent(Double.self, forKey: "volumeTotal")
        volumeAvg = try container.decodeIfPresent(Double.self, forKey: "volumeAvg")
        volumeTotalChange = try container.decodeIfPresent(VolumeTotalChange.self, forKey: "volumeTotalChange")
        availableInvestment = try container.decodeIfPresent(Double.self, forKey: "availableInvestment")
        feeSuccess = try container.decodeIfPresent(Double.self, forKey: "feeSuccess")
        feeManagement = try container.decodeIfPresent(Double.self, forKey: "feeManagement")
        ipfsHash = try container.decodeIfPresent(String.self, forKey: "ipfsHash")
        tradeIpfsHash = try container.decodeIfPresent(String.self, forKey: "tradeIpfsHash")
        isEnabled = try container.decodeIfPresent(Bool.self, forKey: "isEnabled")
        chart = try container.decodeIfPresent([Chart].self, forKey: "chart")
        manager = try container.decodeIfPresent(ProfilePublicViewModel.self, forKey: "manager")
        hasNewRequests = try container.decodeIfPresent(Bool.self, forKey: "hasNewRequests")
        isHistoryEnable = try container.decodeIfPresent(Bool.self, forKey: "isHistoryEnable")
        isInvestEnable = try container.decodeIfPresent(Bool.self, forKey: "isInvestEnable")
        isWithdrawEnable = try container.decodeIfPresent(Bool.self, forKey: "isWithdrawEnable")
        isOwnProgram = try container.decodeIfPresent(Bool.self, forKey: "isOwnProgram")
    }
}

