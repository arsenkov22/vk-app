//
//  NewGroupsViewController.swift
//  GeekbrainsUI
//
//  Created by Админ on 05.02.2023.
//

import UIKit

class NewGroupsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let cellID = "NewGroupTableViewCell"
    var modelNewGroups = ModelNewGroups()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
extension NewGroupsViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelNewGroups.newGroups.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Группы"
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! NewGroupTableViewCell
        
        let newGroup = modelNewGroups.newGroups[indexPath.row]
        
        cell.nameNewGroup.text = newGroup.name
        cell.newGroupImageView.image = newGroup.image
        return cell
    }
    
}
