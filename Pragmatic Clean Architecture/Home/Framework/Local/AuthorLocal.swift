//
//  AuthorLocal.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation

struct AuthorLocal: Equatable {
    
    let id: String
    let firstName: String
    let lastName: String
    let rating: Int
    let junkThatWeStoreLocally: String
    
    func toPlain() -> AuthorPlain {
        return AuthorPlain(
            id: self.id,
            fullName: mapFullName(firstName: self.firstName,lastName:  self.lastName),
            rating: self.rating
        )
    }
    
    private func mapFullName(firstName: String, lastName: String) -> String {
        return "\(firstName) \(lastName)"
    }
    
    
    static func mapAuthorsLocalToPlain(authorsLocal: [AuthorLocal]) -> [AuthorPlain] {
        return authorsLocal.map { local in
            local.toPlain()
        }
    }
}
