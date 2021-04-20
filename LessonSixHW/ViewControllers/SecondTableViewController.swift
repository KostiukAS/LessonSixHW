//
//  SecondTableViewController.swift
//  LessonSixHW
//
//  Created by admin on 20.04.2021.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    private var person = Person()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return person.collectionOfNames.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3 // Name, email, phone number
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "informationAboutPerson", for: indexPath)
        if indexPath.row == 0 {
            let surname = Int.random(in: 0...(person.collectionOfSurnames.count - 1))
            let name = Int.random(in: 0...(person.collectionOfNames.count - 1))
            cell.textLabel?.text = "\(person.collectionOfSurnames[surname]) \(person.collectionOfNames[name])"
            person.collectionOfSurnames.remove(at: surname)
            person.collectionOfNames.remove(at: name)
            return cell
        } else if indexPath.row == 1 {
            let email = Int.random(in: 0...(person.collectionOfEmails.count - 1))
            cell.textLabel?.text = "\(person.collectionOfEmails[email])"
            person.collectionOfEmails.remove(at: email)
        } else if indexPath.row == 2 {
            let phoneNumber = Int.random(in: 0...(person.collectionOfTelephones.count - 1))
            cell.textLabel?.text = "\(person.collectionOfTelephones[phoneNumber])"
            person.collectionOfTelephones.remove(at: phoneNumber)
        } else {
            return cell
        }
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
