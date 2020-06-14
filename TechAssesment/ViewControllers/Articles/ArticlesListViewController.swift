//
//  HomeListViewController.swift
//  TechAssesment
//
//  Created by Kareem on 6/14/20.
//  Copyright © 2020 Kareem. All rights reserved.
//

import UIKit
import ProgressHUD


class ArticlesListViewController: UIViewController {

    //MARK:-  @IBOutlet
    @IBOutlet weak var articalesTableView: UITableView!
    {
        didSet {
            articalesTableView.delegate = self
            articalesTableView.dataSource = self
        }
    }

    //MARK:-  Variables
    fileprivate let articalesListPresenter = ArticlesListPresenter()
    var  articalesArray : [Results]?
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        articalesListPresenter.attachView(false, view: self)
        articalesListPresenter.getArticalesList()
    }
}


//MARK: - TableView DataSource
extension ArticlesListViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articalesArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "articaleTableViewCell", for: indexPath) as! articaleTableViewCell
        if let articale = self.articalesArray?[indexPath.row] {
              cell.setupCell(articale:articale)
        }
        return cell
    }
}

//MARK: - ArticalesListProtcol
extension ArticlesListViewController : ArticlesListProtcol {
    func failedArticaleResponse() {
        print("Failed")
    }
    func startLoading() {
        ProgressHUD.show()
    }
    func finishLoading() {
        ProgressHUD.dismiss()
    }
    func getArticalesArray(articalesArray: [Results]) {
        self.articalesArray = articalesArray
        self.articalesTableView.reloadData()
    }
}


