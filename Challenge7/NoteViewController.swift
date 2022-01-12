//
//  NoteViewController.swift
//  Challenge7
//
//  Created by Keith Crooc on 2022-01-10.
//

import UIKit

class NoteViewController: UIViewController {
    
//    var noteSelected: Note
    
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var noteLabel: UITextView!
    
    public var noteTitle: String = ""
    public var noteBody: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = noteTitle
        noteLabel.text = noteBody

        // Do any additional setup after loading the view.
    }
    


}
