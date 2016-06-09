//: Playground - noun: a place where people can play

import UIKit


//Define ToDo class.
protocol Identity
{
    var id: String{ get set}
}

class ToDo: Identity
{

    let title: String
    let description: String
    var id: String

    init(title: String, description: String)
    {
        self.title = title
        self.description = description
        self.id = NSUUID().UUIDString
    }
    
    func listItem() -> String
    {
        return "\(self.title): \(self.description) with an id of \(self.id)"
    }
}

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

class Store: ObjectStoreProtocol {
    static let shared = Store()
    private init() {}
    
    typealias Object = ToDo
    var objects = [Object]()
}

