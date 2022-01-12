//
//  ViewController.swift
//  Challenge7
//
//  Created by Keith Crooc on 2021-11-21.
//


// IMITATING THE NOTES APP

// 1. Tableview to list notes. Embed in a navigation controller. ✅
// 2. Tapping a note should slide in a detailView -> contains a full-screen text view (project 19) ✅
// 3. Save each note as it's own class? Should be done using codable. (Project 12)
// 4. Add some tool bar items in the DetailView controller to delete / compose. (Project 4)
// 5. add An action button that shares the text using UIActivityViewController. (Project 3)

import UIKit

class ViewController: UITableViewController {

    
//    creating an instance of our notes array.
//    var notes = [Note]()
    var notes: [(title: String, note: String)] = []
    var allNotes = [Note]()
    
    var models: [(title: String, note: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notes"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createNote))
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(reloadNotes))
        
        
        let sampleNoteTitle = "Sample Note"
        let sampleNoteBody = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"
        
//        let sampleNote = Note(title: sampleNoteTitle, body: sampleNoteBody)
        
        notes.append((title: sampleNoteTitle, note: sampleNoteBody))
        
        
        
        
//        let defaults = UserDefaults.standard
//
//        if let savedNotes = defaults.object(forKey: "notes") as? Data {
//            let jsonDecoder = JSONDecoder()
//
//            do {
//                notes = try jsonDecoder.decode([Note].self, from: savedNotes)
//                print(notes)
//                print("success!")
//            } catch {
//                print("failed to pull notes")
//            }
//        }
        
    }
    
    
//    table
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Note", for: indexPath)
        
        
        let note = notes[indexPath.row]
        
        cell.textLabel?.text = note.title
        cell.detailTextLabel?.text = note.note
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "viewNote") as? NoteViewController else {
            return
        }
        
        let note = notes[indexPath.row]
        
        vc.navigationItem.largeTitleDisplayMode = .never
//        vc.noteSelected = notes[indexPath.row]
        vc.noteTitle = note.title
        vc.noteBody = note.note
        navigationController?.pushViewController(vc, animated: true)
    
        
        
    }
    
    @objc func createNote() {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "newNote") as? CreateViewController else {
            return
        }
        
        vc.saveToArray = { noteTitle, note in
            self.navigationController?.popToRootViewController(animated: true)
            self.notes.append((title: noteTitle, note: note))
            self.tableView.reloadData()
            
        }
        
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    
    @objc func reloadNotes() {
        
        tableView.reloadData()
        
    }
    
    

}

