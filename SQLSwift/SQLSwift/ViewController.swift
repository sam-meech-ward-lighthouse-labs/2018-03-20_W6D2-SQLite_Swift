//
//  ViewController.swift
//  SQLSwift
//
//  Created by Sam Meech-Ward on 2018-03-20.
//  Copyright © 2018 meech-ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var people = [[String: String]]()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let database = SQLiteDatabase()
    try! database.openDatabase(name: "database.db")
    let query = """
      SELECT * FROM famous_people
      WHERE first_name LIKE
    """
    people = try! database.execute(complexQuery: query)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}
extension ViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return people.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
    
    let person = people[indexPath.row]
    cell.textLabel?.text = person["first_name"]
    
    return cell
  }
  
  
}
