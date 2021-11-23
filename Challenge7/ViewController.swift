//
//  ViewController.swift
//  Challenge7
//
//  Created by Keith Crooc on 2021-11-21.
//


// IMITATING THE NOTES APP

// 1. Tableview to list notes. Embed in a navigation controller.
// 2. Tapping a note should slide in a detailView -> contains a full-screen text view (project 19)
// 3. Save each note as it's own class? Should be done using codable.
// 4. Add some tool bar items in the DetailView controller to delete / compose.
// 5. add An action button that shares the text using UIActivityViewController.

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notes"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    
    
    
    

}

