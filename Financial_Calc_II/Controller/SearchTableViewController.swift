//
//  ViewController.swift
//  Financial_Calc_II
//
//  Created by a-robota on 4/20/22.
//
//
//  ViewController.swift
//  FinanceApp
//
//  Created by a-robota on 4/20/22.
//

import UIKit
import Combine
import MBProgressHUD

class SearchTableViewController: UITableViewController {

    
    // [ensures UISearchBar loads everytime]-- instantiates UISearchController
    private lazy var searchController: UISearchController = {
        let sc = UISearchController(searchResultsController: nil)
        sc.searchResultsUpdater = self
        sc.delegate = self
        sc.obscuresBackgroundDuringPresentation = false
        sc.searchBar.placeholder = "Enter Company Name or $Ticker"
        sc.searchBar.autocapitalizationType = .allCharacters
        return sc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
    }
    
    private func setupNavBar() {
        navigationItem.searchController = searchController
        navigationItem.title = "Search"
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

}

extension SearchTableViewController: UISearchResultsUpdating, UISearchControllerDelegate {
    func updateSearchResults(for searchController: UISearchController) {
//        guard let searchQuery = searchController.searchBar.text,
//              !searchQuery.isEmpty else { return }
//        self.searchQuery = searchQuery
    }
    
    func willPresentSearchController(_ searchController: UISearchController) {
        //mode = .search
    }
    
}
