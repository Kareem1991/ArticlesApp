//
//  ArticalesListPresenter.swift
//  TechAssesment
//
//  Created by Kareem on 6/14/20.
//  Copyright © 2020 Kareem. All rights reserved.
//

import Foundation
class ArticlesListPresenter {
    
    //MARK:- Variables
    weak fileprivate var articalesListProtocol: ArticlesListProtcol?
    var listOfArticales : ArticalResultsModel?
    
    //MARK:- Methods
    func attachView(_ attach: Bool, view: ArticlesListProtcol?) {
        if attach {
            articalesListProtocol = nil
        } else {
            if let view = view { articalesListProtocol = view }
        }
    }
    func getArticalesList(){
        self.articalesListProtocol?.startLoading()
        ListsWebServiceFactory().GetArticalesList { (error , model , code) in
            self.articalesListProtocol?.finishLoading()
            if code == 200 {
                if let articalesModel = model as? ArticalResultsModel
                {
                    self.listOfArticales = articalesModel
                    self.articalesListProtocol?.getArticalesArray(articalesArray: self.listOfArticales?.results ?? [])
                }
            } else {
                print("Error")
            }
        }
    }
}
