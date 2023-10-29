//
//  ViewController.swift
//  ClassWork3
//
//  Created by User on 23/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let tableView = UITableView()
    
    private var contacts : [Contact] = []

    private var s: [String] = []
    
    private let cellID = "cell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contacts"
        view.backgroundColor = .white
        configureTableView()
        setData()
    }
    private func setData() {
        contacts = [
        Contact(image: "personImage1", name: "Syimyk", phoneNumber: "0557803888"),
        Contact(image: "personImage2", name: "Arlen", phoneNumber: "07584798847"),
        Contact(image: "personImage3", name: "Beka", phoneNumber: "07584759847"),
        Contact(image: "personImage4", name: "Sultan", phoneNumber: "0758785847"),

        ]
    }
    private func configureTableView() {
        
        view.addSubview(tableView)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant:  40).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    // ...

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contacts[indexPath.row].name

        if let image = UIImage(named: contacts[indexPath.row].image) {
            let cornerRadius: CGFloat = 30
            cell.imageView?.layer.cornerRadius = cornerRadius
            cell.imageView?.clipsToBounds = true
            cell.imageView?.image = image
        }

        cell.detailTextLabel?.text = contacts[indexPath.row].phoneNumber

        return cell
    }

}

//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("mjfvf:\(indexPath.row)")
//    }
//








