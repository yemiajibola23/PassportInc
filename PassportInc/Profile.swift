//
//  Profile.swift
//  PassportInc
//
//  Created by Yemi Ajibola on 10/14/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

struct Profile {
    var name: String
    var age: Int
    var id: String
    var image: UIImage?
    var imageURL: URL?
    var hobbies: [String]?
    var gender: String
    
    init(name: String, age: Int, gender: String, id: String = "") {
        self.id = id
        self.name = name
        self.age = age
        self.gender = gender
    }
    
    init(snapshot: FIRDataSnapshot) {
        id = snapshot.key
       let profileDictionary = snapshot.value as! [String: AnyObject]
        
        name = profileDictionary["name"] as! String
        age = profileDictionary["age"] as! Int
        gender = profileDictionary["gender"] as! String
    }
    
    init() {
        name = ""
        age = 0
        id = ""
        gender = ""
    }
}
