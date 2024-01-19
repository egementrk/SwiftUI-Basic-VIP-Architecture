//
//  RickAndMorty.swift
//  SwiftUI-VIP
//
//  Created by Egemen TÜRK on 18.01.2024.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rickAndMorty = try? JSONDecoder().decode(RickAndMorty.self, from: jsonData)

import Foundation

// MARK: - RickAndMorty
struct RickAndMorty: Codable {
    let id: Int?
    let name, status, species, type: String?
    let gender: String?
    let origin, location: Location?
    let image: String?
    let episode: [String?]
    let url: String?
    let created: String?
}

// MARK: - Location
struct Location: Codable {
    let name: String
    let url: String
}

class RickAndMortyDataStore: ObservableObject {
    @Published var character: RickAndMorty?
}
