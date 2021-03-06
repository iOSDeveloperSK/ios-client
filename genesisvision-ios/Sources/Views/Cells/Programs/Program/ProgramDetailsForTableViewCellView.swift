//
//  ProgramDetailsForTableViewCellView.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 28.02.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit

class ProgramDetailsForTableViewCellView: UIStackView {

    @IBOutlet var investorsTitleLabel: UILabel!
    @IBOutlet var balanceTitleLabel: UILabel!
    @IBOutlet var avrProfitTitleLabel: UILabel!
    @IBOutlet var totalProfitTitleLabel: UILabel!
    
    @IBOutlet var investorsValueLabel: UILabel!
    @IBOutlet var balanceValueLabel: UILabel!
    @IBOutlet var avrProfitValueLabel: UILabel!
    @IBOutlet var totalProfitValueLabel: UILabel!
    
    // MARK: - Public Methods
    func setup(with investorsCountTitle: String? = "INVESTORS", investorsCount: Int?,
               balanceTitle: String? = "BALANCE", balance: Double?,
               avrProfitTitle: String? = "AVR %", avrProfit: Double?,
               totalProfitTitle: String? = "TOTAL %", totalProfit: Double?) {
        investorsTitleLabel.text = investorsCountTitle
        balanceTitleLabel.text = balanceTitle
        avrProfitTitleLabel.text = avrProfitTitle
        totalProfitTitleLabel.text = totalProfitTitle
        
        investorsTitleLabel.textColor = UIColor.Font.dark
        balanceTitleLabel.textColor = UIColor.Font.medium
        avrProfitTitleLabel.textColor = UIColor.Font.medium
        totalProfitTitleLabel.textColor = UIColor.Font.dark
        
        if let investorsCount = investorsCount,
            let balance = balance,
            let avrProfit = avrProfit,
            let totalProfit = totalProfit {
            
            let avrProfitValue = avrProfit.rounded(toPlaces: 4)
            let totalProfitValue = totalProfit.rounded(toPlaces: 4)
            
            investorsValueLabel.text = investorsCount.toString()
            balanceValueLabel.text = balance.rounded(toPlaces: 4).toString()
            avrProfitValueLabel.text = avrProfitValue.toString() + "%"
            totalProfitValueLabel.text = totalProfitValue.toString() + "%"
            
            investorsValueLabel.textColor = UIColor.primary
            balanceValueLabel.textColor = UIColor.Font.medium
            avrProfitValueLabel.textColor = UIColor.Font.medium
            totalProfitValueLabel.textColor = totalProfitValue == 0 ? UIColor.Font.medium : totalProfitValue > 0 ? UIColor.Font.green : UIColor.Font.red
        }
    }
}
