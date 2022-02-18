//
//  HomeViewModel.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import RxSwift
import Resolver

class HomeViewModel : ObservableObject {
    
    @Injected var stateMapper: HomeStateMapper
    @Injected var getArticlesUseCase: GetArticles
    @Injected var likeArticleUseCase: LikeArticle

    @Published public var state: HomeState = HomeState.loading
    
    let disposeBag = DisposeBag()
    
    public func handleIntent(intent: HomeIntent) {
        switch intent {
        case HomeIntent.ViewArticles:
            viewArticles()
        case HomeIntent.LikeArticle(let id):
            likeArticleUseCase.like(id: id)
            viewArticles()
        }
    }
    
    private func viewArticles() {
        getArticlesUseCase.articles()
            .subscribe { event in
            if (event.error != nil) {
                self.state = HomeState.error
            } else if (event.element != nil){
                self.state = self.stateMapper.map(articles: event.element!)
            }
        }.disposed(by: disposeBag)
    }
}
