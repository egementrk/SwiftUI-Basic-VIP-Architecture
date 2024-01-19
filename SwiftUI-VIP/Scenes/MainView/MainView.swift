//
//  MainView.swift
//  SwiftUI-VIP
//
//  Created by Egemen TÜRK on 18.01.2024.
//

import SwiftUI

protocol MainViewProtocol {
    func displayData(viewModel: RickAndMorty)
}

extension MainView: MainViewProtocol {
    
    func displayData(viewModel: RickAndMorty) {
        guard let name = viewModel.name else { return }
        dataStore.character = viewModel
    }
    
    func fetchData() {
        interactor?.fetchData()
    }
}

struct MainView: View {
    var interactor: MainViewInteractorProtocol?
    
    @ObservedObject var dataStore = RickAndMortyDataStore()
    
    @State private var characterName = ""
    
    var body: some View {
        Text("Character: " + (dataStore.character?.name ?? "Empty"))
            .onAppear {
                fetchData() }
    }
}

#Preview {
    ContentView()
}
