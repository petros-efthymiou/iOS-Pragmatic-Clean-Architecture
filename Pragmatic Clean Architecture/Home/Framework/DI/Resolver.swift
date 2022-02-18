//
//  Resolver.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation

import Resolver
import RxSwift

extension Resolver: ResolverRegistering {
    
  public static func registerAllServices() {
    
      register { GetArticles() }
      register { LikeArticle() }
      register { HomeStateMapper() }
      register { GetArticlesSourceRemote() }.implements(GetArticlesSource.self)
      register { ArticleRemoteDataGateway() }.implements(ArticleDataSourceRemote.self)
      register { AuthorLocalDataGateway() }.implements(AuthorDataSourceLocal.self)
      register { HomeViewModel() }
      register { ArticlesServiceImpl() }.implements(ArticlesService.self)
      register { LikeArticleSourceRemote() }.implements(LikeArticleSource.self)
  }
}
