//
//  ProfileViewController.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 23/11/21.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var profileTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        profileTableView.delegate = self
        profileTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ProfileModel.profileTableItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let profileTableViewCell = profileTableView.dequeueReusableCell(withIdentifier: "profileTableViewCell", for: indexPath) as! ProfileTableViewCell
        profileTableViewCell.contentLabel.text = ProfileModel.profileTableItems[indexPath.row].content
        return profileTableViewCell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
