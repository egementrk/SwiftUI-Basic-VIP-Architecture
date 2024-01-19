//
//  CreateMainView.swift
//  SwiftUI-VIP
//
//  Created by Egemen TÜRK on 18.01.2024.
//

import SwiftUI

extension MainView {
    
    func configureView() -> some View {
        var view = self
        let interactor = MainViewInteractor()
        let presenter = MainViewPresenter()
        view.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view
        return view
    }
}
