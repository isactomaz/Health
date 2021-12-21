//
//  TestViewController.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 19/12/21.
//

import UIKit

class TestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var testTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        testTableView.delegate = self
        testTableView.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        TestModel.questions.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        TestModel.options.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        TestModel.questions[section].content
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let testTableViewCell = testTableView.dequeueReusableCell(withIdentifier: "testTableViewCell", for: indexPath) as! TestTableViewCell
        testTableViewCell.contentLabel.text = TestModel.options[indexPath.row].content
        testTableViewCell.accessoryType = testTableViewCell.isSelected ? .checkmark : .none
        return testTableViewCell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        TestModel.choice[indexPath.section] = indexPath.row

        testTableView.deselectRow(at: indexPath, animated: true)

        if let cell = testTableView.cellForRow(at: indexPath as IndexPath) {
            if cell.accessoryType == .checkmark{
                cell.accessoryType = .none
            }
            else{
                cell.accessoryType = .checkmark
            }
        }

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
