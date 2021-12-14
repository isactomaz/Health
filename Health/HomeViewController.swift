//
//  HomeViewController.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 07/12/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func panicButton(_ sender: Any) {
        guard let number = URL(string: "tel://\(4035555678)") else { return }
        if UIApplication.shared.canOpenURL(number) {
            UIApplication.shared.open(number)
        } else {
            print("Can't open url on this device")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
