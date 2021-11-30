//
//  DetailViewController.swift
//  Challenge7
//
//  Created by Keith Crooc on 2021-11-22.
//


// Organizing our detailView.
// if I click on the sample note, I want it's Title to be in the first line and its body to be in the second line.




import UIKit

class DetailViewController: UIViewController {
    
    var noteSelected: Note?
    @IBOutlet var noteText: UITextView!
    
    
    var noteTitle = ""
    var noteBody = ""
    
    override func loadView() {
        noteText = UITextView()
        view = noteText
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveNote))
        
        
        
        guard let noteInfo = noteSelected else { return }
        
        noteTitle = noteInfo.title
        noteBody = noteInfo.body
        
        noteText.text = "\(noteTitle)\n\n\(noteBody)"
        
        
        boldTitle(textView: noteText)
    }
    
    
    
    
    @objc func saveNote() {
        
    }
    
    
    func boldTitle(textView: UITextView) {
        let textAsNSString = textView.text as NSString
        let lineBreakRange = textAsNSString.range(of: "\n")
        let newAttributedText = NSMutableAttributedString(attributedString: textView.attributedText)
        let boldRange: NSRange
        
        
        print(newAttributedText)
        
        if lineBreakRange.location < textAsNSString.length {
            boldRange = NSRange(location: 0, length: lineBreakRange.location)
        } else {
            boldRange = NSRange(location: 0, length: textAsNSString.length)
        }
        
        newAttributedText.addAttribute(NSAttributedString.Key.font, value: UIFont.preferredFont(forTextStyle: UIFont.TextStyle.headline), range: boldRange)
        textView.attributedText = newAttributedText
    }
}
