//
//  NetworkManager.swift
//  TechAssesment
//
//  Created by Kareem on 6/14/20.
//  Copyright © 2020 Kareem. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {

    func createHTTPRequest(
        url: String,
        params: Dictionary<String, Any>,
        method: HTTPMethod,
        headers : HTTPHeaders  ,
        completionHandler: @escaping (_ httpResponse: DataResponse<Any> , _ code:Int) -> ()) {
        let manager = Alamofire.SessionManager.default
        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        print(params)
         
        let request = manager.request(
            url,
            method: method,
            parameters: params,
            headers: headers)
        
        request.responseJSON { response in
            print(response.debugDescription)
            let code  = response.response?.statusCode
            completionHandler(response , code ?? 0)
        }
    }
    
}
