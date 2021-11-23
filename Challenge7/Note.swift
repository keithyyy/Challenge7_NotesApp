//
//  Note.swift
//  Challenge7
//
//  Created by Keith Crooc on 2021-11-22.
//

import UIKit

class Note: NSObject, Codable {
    var title: String
    var body: String
    
    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
}
