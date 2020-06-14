//
//  ArticlesPresenterTests.swift
//  TechAssesmentTests
//
//  Created by Kareem on 6/15/20.
//  Copyright © 2020 Kareem. All rights reserved.
//

import XCTest
import ObjectMapper
@testable import TechAssesment


class ArticlesPresenterTests: XCTestCase {

    fileprivate let articlesPresenter = ArticlesListPresenter()
    fileprivate let articlesViewMock = ArticlesViewMock()
    fileprivate var articlesMock : ArticalResultsModel?

    
    func getMockup(jsonFileName:String, completion:@escaping (Any) -> ()){
        print(jsonFileName)
        if let path = Bundle.main.path(forResource: jsonFileName, ofType: "") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                completion(jsonResult)
            } catch {
                // handle error
            }
        }
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        articlesPresenter.attachView(false, view: articlesViewMock)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
