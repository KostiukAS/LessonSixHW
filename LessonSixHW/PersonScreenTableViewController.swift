//
//  PersonScreenTableViewController.swift
//  LessonSixHW
//
//  Created by admin on 20.04.2021.
//

import UIKit

class PersonScreenTableViewController: UITableViewController {
    
    //MARK: - Private properties
    
    private var person = Person()
    private var emails: [String] = []
    private var phoneNumbers: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.collectionOfNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let surname = Int.random(in: 0...(person.collectionOfSurnames.count - 1))
        let name = Int.random(in: 0...(person.collectionOfNames.count - 1))
        let email = Int.random(in: 0...(person.collectionOfEmails.count - 1))
        let phoneNumber = Int.random(in: 0...(person.collectionOfTelephones.count - 1))
        
        cell.textLabel?.text = "\(person.collectionOfSurnames[surname]) \(person.collectionOfNames[name])"
        
        emails.append(person.collectionOfEmails[email])
        phoneNumbers.append(person.collectionOfTelephones[phoneNumber])
        
        person.collectionOfSurnames.remove(at: surname)
        person.collectionOfNames.remove(at: name)
        person.collectionOfEmails.remove(at: email)
        
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            let chosenCell = tableView.cellForRow(at: indexPath)
            detailVC.name = chosenCell?.textLabel?.text
            detailVC.email = emails[indexPath.row]
            detailVC.phoneNumber = phoneNumbers[indexPath.row]
        }
    }
    

}
