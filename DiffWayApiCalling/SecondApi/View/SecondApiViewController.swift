//
//  SecondApiViewController.swift
//  DiffWayApiCalling
//
//  Created by Bhumika Patel on 10/11/22.
//

import UIKit

class SecondApiViewController: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    var viewModelUser = UserViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModelUser.vc = self
        // Do any additional setup after loading the view.
        viewModelUser.getAllUserDataAF()
      //  tblView.register(UserCell.self, forCellReuseIdentifier: "UserCell")
        tblView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
        // Do any additional setup after loading the view.
    }
    

 
}
extension SecondApiViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModelUser.arrUser.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell
        let modelUser = viewModelUser.arrUser[indexPath.row]
        cell?.modelUser = modelUser

        return cell!
    }
}
