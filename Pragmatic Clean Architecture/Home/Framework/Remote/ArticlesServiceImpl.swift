//
//  ArticlesService.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation

import Foundation
import RxSwift
import Alamofire

class ArticlesServiceImpl : ArticlesService {
    
    enum GetArticlesFailureReason: Int, Error {
        case notFound = 404
    }
    
    func fetchArticles() -> Observable<[ArticleRaw]> {
        return Observable.create { observer -> Disposable in
            AF.request("https://articles-clean.herokuapp.com/api/v2/articles")
                .validate(statusCode: 200..<300)
                .responseDecodable { (response: DataResponse<[ArticleRaw], AFError>) in
                    switch response.result {
                    case .success:
                        guard let data = response.data else {
                            observer.onError(response.error ?? GetArticlesFailureReason.notFound)
                            return
                        }
                        do {
                            let articles = try JSONDecoder().decode([ArticleRaw].self, from: data)
                            observer.onNext(articles)
                        } catch {
                            observer.onError(error)
                        }
                    case .failure(let error):
                        if let statusCode = response.response?.statusCode,
                           let reason = GetArticlesFailureReason(rawValue: statusCode)
                        {
                            observer.onError(reason)
                        }
                        observer.onError(error)
                    }
                }
            
            return Disposables.create()
        }
    }
    
    func likeArticle(id: String) {
                
        AF.request("https://articles-clean.herokuapp.com/api/v2/articles/like-article/\(id)", method: .put, parameters: ["id": id], encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).responseDecodable { (response: DataResponse<ArticleRaw, AFError>) in
            print(response.result as Any)
        }
    }
}
