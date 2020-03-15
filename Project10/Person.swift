//
//  Person.swift
//  Project10
//
//  Created by Nikola on 05/03/2020.
//  Copyright © 2020 Nikola Krstevski. All rights reserved.
//

import UIKit
// 1 step - To use NSCoding we must inherit from NSObject(swift doesn't tell you that) and from NSCoding. NSCoding requires implementing two methods: an required initializer and encode( ). Initializer is used when loading objects of the class and encode( ) is used when saving.
class Person: NSObject, NSCoding {
    
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
   
    required init?(coder: NSCoder) {
          name = coder.decodeObject(forKey: "name") as? String ?? ""
          image = coder.decodeObject(forKey: "image") as? String ?? ""
      }

    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(image, forKey: "image")
    }
    
  
    
}
