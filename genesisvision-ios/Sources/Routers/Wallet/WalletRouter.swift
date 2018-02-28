//
//  WalletRouter.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 26.01.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

enum WalletRouteType {
    case withdraw, deposit, showProgramDetail(investmentProgramID: String, state: ProgramDetailViewState)
}

class WalletRouter: Router {
    
    // MARK: - Public methods
    func show(routeType: WalletRouteType) {
        switch routeType {
        case .withdraw:
            withdraw()
        case .deposit:
            deposit()
        case .showProgramDetail(let investmentProgramID, let state):
            showProgramDetail(with: investmentProgramID, state: state)
        }
    }
    
    // MARK: - Private methods
    private func withdraw() {
        guard let viewController = WalletWithdrawViewController.storyboardInstance(name: .wallet) else { return }
        let router = WalletWithdrawRouter(parentRouter: self, navigationController: navigationController)
        let viewModel = WalletWithdrawViewModel(withRouter: router)
        viewController.viewModel = viewModel
        viewController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func deposit() {
        guard let viewController = WalletDepositViewController.storyboardInstance(name: .wallet) else { return }
        let router = WalletDepositRouter(parentRouter: self, navigationController: navigationController)
        let viewModel = WalletDepositViewModel(withRouter: router)
        viewController.viewModel = viewModel
        viewController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func showProgramDetail(with investmentProgramID: String, state: ProgramDetailViewState) {
        guard let viewController = ProgramDetailViewController.storyboardInstance(name: .traders) else { return }
        let router = ProgramDetailRouter(parentRouter: self, navigationController: navigationController)
        let viewModel = ProgramDetailViewModel(withRouter: router, with: investmentProgramID, state: state)
        viewController.viewModel = viewModel
        viewController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewController, animated: true)
    }
}
