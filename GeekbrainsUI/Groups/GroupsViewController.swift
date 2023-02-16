//
//  GroupsViewController.swift
//  GeekbrainsUI
//
//  Created by Админ on 05.02.2023.
//

import UIKit

class GroupsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let cellID = "GroupTableViewCell"
    var modelGroup = ModelGroup()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
extension GroupsViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return modelGroup.groups.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Мои группы"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! GroupTableViewCell
       
        let group = modelGroup.groups[indexPath.row]
        
        cell.nameGroup.text = group.name
        cell.groupImageView.image = group.image
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let group = modelGroup.groups[indexPath.row]
        
        let alert = UIAlertController(title: "\(group.name)", message: "", preferredStyle: .actionSheet)
        let profile = UIAlertAction(title: " Открыть группу \(group.name)", style: .default){ (alert) in
            
        }
        let delite = UIAlertAction(title: "Удалить группу \(group.name)", style: .default){ (alert) in
           
            tableView.reloadData()
        }
        
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: nil))
        
        alert.addAction(profile)
        alert.addAction(delite)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
