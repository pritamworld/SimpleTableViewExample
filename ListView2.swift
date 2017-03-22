//
//  ListView2.swift
//  SimpleTableViewExample
//
//  Created by moxDroid on 2017-03-22.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import UIKit

class ListView2: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let textCellIdentifier = "TextCell"
    
    let swiftBlogs = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
                      "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
                      "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
                      "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
                      "Pear", "Pineapple", "Raspberry", "Strawberry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        self.title = "ListView2"
        self.navigationController!.setNavigationBarHidden(false, animated: true);
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return swiftBlogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = swiftBlogs[row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("You like to eat \(swiftBlogs[indexPath.row]).")
    }
}
