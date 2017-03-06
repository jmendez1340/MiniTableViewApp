//
//  ViewController.swift
//  NewTableViewApp
//
//  Created by Jason on 3/5/17.
//  Copyright © 2017 Jason Mendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let cellTableIdentifier = "CellTableIdentifier"
    @IBOutlet var tableView:UITableView!
    let songs = [
        ["Name":"Brighton Rock", "Track":"1"],
        ["Name":"Killer Queen", "Track":"2"],
        ["Name":"Tenement Funster", "Track":"3"],
        ["Name":"Flick of the Wrist", "Track":"4"],
        ["Name":"Lily Of The Valley", "Track":"5"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(NameAndTrackCell.self, forCellReuseIdentifier: cellTableIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark: -
    // Mark: Table View Data Source Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellTableIdentifier, for: indexPath)
        as! NameAndTrackCell
        
        let rowData = songs[indexPath.row]
        cell.name = rowData["Name"]!
        cell.track = rowData["Track"]!
        
        return cell
    }

}

