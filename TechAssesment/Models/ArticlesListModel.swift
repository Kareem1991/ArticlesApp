
//
//  articlesListModel.swift
//  TechAssesment
//
//  Created by Kareem on 6/14/20.
//  Copyright © 2020 Kareem. All rights reserved.
//

import Foundation
import ObjectMapper

class ArticalResultsModel: Mappable {
   
    var results: [Results]?
    required init?(map: Map) {
    }

    func mapping(map: Map) {
        results  <- map["results"]
    }
}
class Results: Mappable {
   
    var publishedDate: String?
    var byLine :String?
    var title :String?
    var source : String?
    required init?(map: Map) {
        
    }

    func mapping(map: Map) {
        publishedDate  <- map["published_date"]
        byLine  <- map["byline"]
        title  <- map["title"]
        source  <- map["source"]
    }
}

