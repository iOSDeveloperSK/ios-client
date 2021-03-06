//
//  WalletDepositViewModel.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 26.02.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit

final class WalletDepositViewModel {
    // MARK: - Variables
    var title: String = "Deposit"

    private var router: WalletDepositRouter!
    
    private var address: String = ""
    private var qrImage: UIImage?
    
    // MARK: - Init
    init(withRouter router: WalletDepositRouter) {
        self.router = router
    }
    
    // MARK: - Public methods
    func getAddress() -> String {
        return address
    }
    
    func getQRImage() -> UIImage {
        return qrImage ?? UIImage.placeholder
    }
    
    func fetch(completion: @escaping CompletionBlock) {
        getAddress { [weak self] (address) in
            guard let address = address,
                var qrCode = QRCode(address)
                else { return completion(.failure(reason: nil)) }
            
            self?.address = address
            qrCode.size = CGSize(width: 300, height: 300)
            qrCode.color = CIColor(cgColor: UIColor.Font.black.cgColor)
            qrCode.backgroundColor = CIColor(cgColor: UIColor.Background.main.cgColor)
            self?.qrImage = qrCode.image
            completion(.success)
        }
    }
    
    // MARK: - Navigation
    func copy(completion: @escaping CompletionBlock) {
        UIPasteboard.general.string = address
        completion(.success)
    }
    
    // MARK: - Private methods
    private func getAddress(completion: @escaping (_ address: String?) -> Void) {
        WalletDataProvider.getWalletAddress { (viewModel) in
            guard let address = viewModel?.address else {
                return completion(nil)
            }
            
            completion(address)
        }
    }
    
}

