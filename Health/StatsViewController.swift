//
//  StatsViewController.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 22/11/21.
//

import UIKit

class StatsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var statsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        statsTableView.delegate = self
        statsTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        StatsModel.statsTableItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let statsTableViewCell = statsTableView.dequeueReusableCell(withIdentifier: "statsTableViewCell", for: indexPath) as! StatsTableViewCell
        statsTableViewCell.contentLabel.text = StatsModel.statsTableItems[indexPath.row].content
        statsTableViewCell.valueLabel.text = StatsModel.statsTableItems[indexPath.row].value.description
        return statsTableViewCell
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
