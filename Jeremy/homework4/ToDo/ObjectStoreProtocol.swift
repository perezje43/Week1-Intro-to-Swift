//
//  ObjectStoreProtocol.swift
//  ToDo
//
//  Created by Jeremy Perez on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol ObjectStoreProtocol: class
{
    associatedtype Object: Identity
    var objects: [Object] {get set}

    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(number: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]

}

extension ObjectStoreProtocol
{
    func add(object: Object)
    {
        self.objects.append(object)
    }
    
    func remove(object: Object)
    {
        self.objects = self.objects.filter({ (objects) -> Bool in
            return object.id != objects.id
        })
    }
    
    func objectAtIndex(number: Int) -> Object
    {
        return self.objects[number]
    }
    
    func count() -> Int
    {
        return self.objects.count
    }
    
    func allObjects() -> [Object]
    {
        return self.objects
    }

}

