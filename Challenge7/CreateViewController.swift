//
//  DetailViewController.swift
//  Challenge7
//
//  Created by Keith Crooc on 2021-11-22.
//


// Organizing our detailView.
// if I click on the sample note, I want it's Title to be in the first line and its body to be in the second line.




import UIKit

class CreateViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var titleText: UITextField!
    @IBOutlet var noteText: UITextView!
    
    
    
    let titleAttributes = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: UIFont.TextStyle.headline)]
    let bodyAttributes = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body)]
    
    
    public var saveToArray: ((String, String) -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        noteText = UITextView()
//        titleText = UITextField()
        
        
        titleText?.becomeFirstResponder()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveNote))
        
        
    }
    
    
    

    @objc func saveNote() {
        
        if let text = titleText.text, !text.isEmpty, !noteText.text.isEmpty {
            saveToArray?(text, noteText.text)
            
                
            
        }
        
    }
    

    
    
//    func writeToMain() {
//        let jsonEncoder = JSONEncoder()
//
//        if let savedData = try? jsonEncoder.encode(savedNotes) {
//            let defaults = UserDefaults.standard
//            defaults.set(savedData, forKey: "notes")
////            delegate.notes = savedNotes
//        } else {
//            print("failed to save note")
//        }
//    }
}
