//
//  HomeViewController.swift
//  Health
//
//  Created by Isac Tomaz da Silva on 07/12/21.
//

import Contacts
import ContactsUI
import UIKit

class HomeViewController: UIViewController, CNContactPickerDelegate {

    @IBAction func panicButton(_ sender: Any) {
        var friendNumber = HomeModel.numbers.first?.number

        if friendNumber == 0 {
            let contactViewController = CNContactPickerViewController()
            contactViewController.delegate = self
            present(contactViewController, animated: true)

            friendNumber = Int(HomeModel.numbers.first!.number)
        }

        guard let number = URL(string: "tel://\(friendNumber!)") else { return }
        if UIApplication.shared.canOpenURL(number) {
            UIApplication.shared.open(number)
        } else {
            print("Can't open url on this device")
        }
    }

    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        let number = contact.phoneNumbers.first!.value.stringValue.replacingOccurrences(of: "-", with: "").replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "")
        let phoneNumber = Int(number)
        HomeModel.update(phoneNumber!)
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
