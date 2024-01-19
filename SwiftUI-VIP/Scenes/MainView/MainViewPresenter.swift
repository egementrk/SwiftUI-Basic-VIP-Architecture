//
//  MainViewPresenter.swift
//  SwiftUI-VIP
//
//  Created by Egemen TÜRK on 18.01.2024.
//

import Foundation

protocol MainViewPresenterProtocol {
    func presentCharacter(data: RickAndMorty)
}

final class MainViewPresenter: MainViewPresenterProtocol {
    var view: MainViewProtocol?
    
    func presentCharacter(data: RickAndMorty) {
        view?.displayData(viewModel: data)
    }
}
