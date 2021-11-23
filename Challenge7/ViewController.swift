//
//  ViewController.swift
//  Challenge7
//
//  Created by Keith Crooc on 2021-11-21.
//


// IMITATING THE NOTES APP

// 1. Tableview to list notes. Embed in a navigation controller. ✅
// 2. Tapping a note should slide in a detailView -> contains a full-screen text view (project 19)
// 3. Save each note as it's own class? Should be done using codable. (Project 12)
// 4. Add some tool bar items in the DetailView controller to delete / compose. (Project 4)
// 5. add An action button that shares the text using UIActivityViewController. (Project 3)

import UIKit

class ViewController: UITableViewController {

    
//    creating an instance of our notes array.
    var notes = [Note]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notes"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        let sampleNoteTitle = "Sample Note"
        let sampleNoteBody = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"
        
        let sampleNote = Note(title: sampleNoteTitle, body: sampleNoteBody)
        notes.append(sampleNote)
    }
    
//    table
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Note", for: indexPath)
        
        
        let note = notes[indexPath.row]
        
        cell.textLabel?.text = note.title
        cell.detailTextLabel?.text = note.body
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.noteSelected = notes[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    
    

}

