//: Playground - noun: a place where people can play

import UIKit


//Define ToDo class.
protocol ListItemId
{
    var id: String{ get set}
}

class ToDo: ListItemId
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

protocol ObjectStoreProtocol
{
    associatedtype Object: ListItemId
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(number: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
}

class ToDo2: ObjectStoreProtocol
{
    static let shared = ToDo2()
    private init() {}
    
    typealias Object = ToDo
    
    private var listItemId = [Object]()
    
    func add(object: Object)
    {
        self.listItemId.append(object)
    }
    
    func remove(object: Object)
    {
        self.listItemId = self.listItemId.filter({ (listItemId) -> Bool in
            return object.id != listItemId.id
        })
    }
    
    func objectAtIndex(number: Int) -> Object
    {
        return self.listItemId[number]
    }
    
    func count() -> Int
    {
        return self.listItemId.count
    }
    
    func allObjects() -> [Object]
    {
        return self.listItemId
    }
}

//Using Playgrounds…
//Declare a BaseClass: NSObject with identifier variable… implement init() that will assign a unique identifier to the identifier variable
//Define ToDo class that inherits from BaseClass. Define your own model scheme (variable it contains, etc)

