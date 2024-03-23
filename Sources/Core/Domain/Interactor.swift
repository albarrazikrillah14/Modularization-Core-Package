//
//  File.swift
//  
//
//  Created by BEI-Zikri on 20/03/24.
//

import Combine

public struct Interactor<Request, Response, ResponseDetail, R: Repository>: UseCase
where R.Request == Request, R.Response == Response, R.ResponseDetail == ResponseDetail {
    
    public let _repository: R
    
    public init(_repository: R) {
        self._repository = _repository
    }
    
    public func execute(request: Request?) -> AnyPublisher<Response, Error> {
        _repository.execute(request: request)
    }

}
