//
//  WebServiceFactory.swift
//  TechAssesment
//
//  Created by Kareem on 6/14/20.
//  Copyright © 2020 Kareem. All rights reserved.
//

import Foundation
import ObjectMapper

class ListsWebServiceFactory {
//MARK:- GetArticalesList
func GetArticalesList(
        completionHandler: @escaping (
        _ error: ErrorModel?,
        _ jsonData: Mappable? ,
        _ statusCode:Int) -> ()) {
        NetworkManager().createHTTPRequest(
            url: API.baseURL.rawValue + "viewed/7.json?api-key=\(apiKey)" ,
            params: [:] ,
            method: .get, headers: [:]) { (response , code)  in
                //                self.handleErrors(response) {(errorModel) in
                //                    if(errorModel != nil) {
                //                        completionHandler(errorModel,nil)
                //                    } else {
                let articalResultsModel = Mapper<ArticalResultsModel>().map(JSONObject: response.result.value)

                completionHandler(nil,articalResultsModel , response.response?.statusCode ?? 0)
                //                    }
                //                }
        }
    }
}
