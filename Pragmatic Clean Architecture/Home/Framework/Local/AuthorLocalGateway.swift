//
//  AuthorLocalGateway.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import RxSwift

class AuthorLocalDataGateway : AuthorDataSourceLocal {
    
    func findAuthors() -> Observable<[AuthorPlain]> {
        return Observable.just(
            AuthorLocal.mapAuthorsLocalToPlain(authorsLocal:
                                                [
                                                    AuthorLocal(
                                                        id: "authorId1",
                                                        firstName: "Petros",
                                                        lastName: "Efthymiou",
                                                        rating: 5,
                                                        junkThatWeStoreLocally: "stored junk 1"
                                                    ),
                                                    AuthorLocal(
                                                        id: "authorId2",
                                                        firstName: "Nikos",
                                                        lastName: "Voulgaris",
                                                        rating: 5,
                                                        junkThatWeStoreLocally: "stored junk 2"
                                                    ),
                                                    AuthorLocal(
                                                        id: "authorId3",
                                                        firstName: "Christos",
                                                        lastName: "Smpyrakos",
                                                        rating: 5,
                                                        junkThatWeStoreLocally: "stored junk 3"
                                                    ),
                                                    AuthorLocal(
                                                        id: "authorId4",
                                                        firstName: "Donny",
                                                        lastName: "Wals",
                                                        rating: 5,
                                                        junkThatWeStoreLocally: "stored junk 4"
                                                    ),
                                                ]
                                               
                                              )
        )
    }
}
