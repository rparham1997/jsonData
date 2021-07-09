//
//  ViewController.swift
//  JSONTableView
//
//  Created by Ramar Parham on 7/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - Outlets
    @IBOutlet weak var propertiesTableView: UITableView!
    
    // MARK: - Properties
    var tableViewData: [PropertiesModel] = []
    
    
    // MARK: - Methods
    
    private func requestServiceData () {
        NetworkManager().callService { (data) in
            
            
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

// MARK: - TableView Extensions

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return 1
    }
    
    
}


