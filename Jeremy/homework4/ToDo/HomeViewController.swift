//
//  ViewController.swift
//  ToDo
//
//  Created by Michael Babiy on 1/13/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Helper Functions
    
    func configureCell(indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("todoCell", forIndexPath: indexPath)
        
        // Missing model.
        // Missing setup.
        let todo = Store.shared.allObjects()[indexPath.row]
        cell.textLabel?.text = "\(todo.title): \(todo.description1)"
        
        return cell
    }
    
    
//    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
//        if let sourceViewController = sender.sourceViewController as? MealViewController, meal = sourceViewController.meal {
//            if let selectedIndexPath = tableView.indexPathForSelectedRow {
//                // Update an existing meal.
//                meals[selectedIndexPath.row] = meal
//                tableView.reloadRowsAtIndexPaths([selectedIndexPath], withRowAnimation: .None)
//            }
//            else {
//                // Add a new meal.
//                let newIndexPath = NSIndexPath(forRow: meals.count, inSection: 0)
//                meals.append(meal)
//                tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
//            }
//            saveMeals()
//        }
//    }
    
    
    
    // MARK: UITableViewDataSource

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Store.shared.count()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        return self.configureCell(indexPath)
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
    {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == .Delete {
            
            // Missing model.
            let todo = Store.shared.allObjects()[indexPath.row]
            Store.shared.remove(todo)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        }
    }
    
//MARK: NSCode
//    func saveTodos() {
//        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(todos, toFile: ToDo.ArchiveURL.path!)
//    
//        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(todos, toFile: ToDo.ArchiveURL.path!)
//        if !isSuccessfulSave {
//            print("Failed to save meals...")
//        }
//    }
//    
//    func loadTodos() -> [ToDo]? {
//    }
}

