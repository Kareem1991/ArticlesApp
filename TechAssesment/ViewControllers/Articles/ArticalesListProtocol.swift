//
//  ArticalesListProtocol.swift
//  TechAssesment
//
//  Created by Kareem on 6/14/20.
//  Copyright © 2020 Kareem. All rights reserved.
//

import Foundation

protocol ArticlesListProtcol: class {
    func startLoading()
    func finishLoading()
    func getArticalesArray(articalesArray : [Results])
    func failedArticaleResponse()
}
