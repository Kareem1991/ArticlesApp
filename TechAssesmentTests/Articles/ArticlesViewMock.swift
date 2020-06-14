//
//  ArticlesViewMock.swift
//  TechAssesmentTests
//
//  Created by Kareem on 6/15/20.
//  Copyright © 2020 Kareem. All rights reserved.
//

import Foundation
@testable import TechAssesment
class ArticlesViewMock : ArticlesListProtcol {
    
    var startLoadingFlag = false
    var finishLoadingFlag = false
    var getArticalesArrayFlag = false
    var failedArticaleResponse = false
    var errorCode = 0

    func startLoading() {
        startLoadingFlag = true
    }
    
    func finishLoading() {
        finishLoadingFlag = true
    }
    
    func getArticalesArray(articalesArray: [Results]) {
       getArticalesArrayFlag = true
    }
    
    func failedArticaleResponse() {
       failedArticaleResponse = true
    }
}
