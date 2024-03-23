//
//  File.swift
//  
//
//  Created by BEI-Zikri on 20/03/24.
//

import Combine

public protocol DataSource {
    associatedtype Request
    associatedtype Response
    associatedtype ResponseDetail
    
    func getGames() -> AnyPublisher<[Response], Error>
    func getGameDetail(id: String) -> AnyPublisher<ResponseDetail, Error>
    func getGameSearch(query: String) -> AnyPublisher<[Response], Error>
}
