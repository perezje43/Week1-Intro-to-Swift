//
//  Student.swift
//  ToDo
//
//  Created by Jeremy Perez on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class ToDo: /*NSObject, NSCoding,*/ Identity
{
    
    let title: String
    let description1: String
    var id: String
    
    init(title: String, description1: String)
    {
        self.title = title
        self.description1 = description1
        self.id = NSUUID().UUIDString
    }
    
    func listItem() -> String
    {
        return "\(self.title): \(self.description1) with an id of \(self.id)"
    }
    
    //Mark NSCoding
    //    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    //    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("todos")
    //
    //    func encodeWithCoder(aCoder: NSCoder) {
    //        aCoder.encodeObject(id, forKey: id)
    //    }
    //
    //    required convenience init?(coder aDecoder: NSCoder) {
    //        let name = aDecoder.decodeObjectForKey(self.id) as! String
    //        self.init(id: id)
    //        
    //    }

}