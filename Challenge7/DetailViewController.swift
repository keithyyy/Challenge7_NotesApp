//
//  DetailViewController.swift
//  Challenge7
//
//  Created by Keith Crooc on 2021-11-22.
//

import UIKit

class DetailViewController: UIViewController {
    
    var noteSelected: Note?
    var textView: UITextView!
    
    override func loadView() {
        textView = UITextView()
        view = textView
    }
    
}
