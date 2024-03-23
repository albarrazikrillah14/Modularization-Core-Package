//
//  File.swift
//  
//
//  Created by BEI-Zikri on 20/03/24.
//

import Foundation
 
public protocol Mapper {
    
    associatedtype ResponseDetail
    associatedtype Response
    associatedtype Entity
    associatedtype Domain
    associatedtype DetailDomain
    
    func transformResponseToEntity(response: Response) -> Entity
    func transformEntityToDomain(entity: Entity) -> Domain
    func transformDetailResponseToDomain(response: ResponseDetail) -> DetailDomain

}
