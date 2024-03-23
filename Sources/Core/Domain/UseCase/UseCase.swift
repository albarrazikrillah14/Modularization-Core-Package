//
//  File.swift
//  
//
//  Created by BEI-Zikri on 20/03/24.
//

import Combine

public protocol UseCase {
    associatedtype Request
    associatedtype Response
    associatedtype ResponseDetail
    
    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
