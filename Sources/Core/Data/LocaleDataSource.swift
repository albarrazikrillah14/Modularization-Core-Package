//
//  File.swift
//  
//
//  Created by BEI-Zikri on 20/03/24.
//

import Combine

public protocol LocaleDataSource {
    associatedtype Request
    associatedtype Response 
    
    func getGames() -> AnyPublisher<[Response], Error>
    func saveGames(from games: [Response]) -> AnyPublisher<Bool, Error>
    func addToFavorite(from id: Int) -> AnyPublisher<Bool, Error>
    func deleteFromFavorite(from id: Int) -> AnyPublisher<Bool, Error>
    func getAllFavorites() -> AnyPublisher<[Response], Error>
    func isFavorite(id: Int) -> AnyPublisher<Bool, Error>
}

