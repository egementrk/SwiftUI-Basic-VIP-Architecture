//
//  MainViewInteractor.swift
//  SwiftUI-VIP
//
//  Created by Egemen TÜRK on 18.01.2024.
//

import Foundation

protocol MainViewInteractorProtocol {
    func fetchData()
}

final class MainViewInteractor: MainViewInteractorProtocol {
    var presenter: MainViewPresenterProtocol?
    
    func fetchData() {
        guard let url = URL(string: apiChracter) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let posts = try JSONDecoder().decode(RickAndMorty.self, from: data)
                DispatchQueue.main.async {
//                    self.data = posts
                    self.presenter?.presentCharacter(data: posts)
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}

