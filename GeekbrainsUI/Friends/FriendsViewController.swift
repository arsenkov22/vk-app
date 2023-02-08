//
//  FriendsViewController.swift
//  GeekbrainsUI
//
//  Created by Админ on 04.02.2023.
//

import UIKit

class FriendsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let cellID = "UserTableViewCell"
    var modelUser = ModelUser()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
extension FriendsViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelUser.users.count
    }
   
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Друзья"
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! UserTableViewCell
        
        let user = modelUser.users[indexPath.row]
        
        cell.nameLebel.text = user.name
        cell.userImageView.image = user.image
        return cell
    }
}
