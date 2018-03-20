//
//  ViewController.swift
//  JurrasicPark
//
//  Created by Sam Meech-Ward on 2018-03-20.
//  Copyright © 2018 meech-ward. All rights reserved.
//

import SQLite3
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
//    let database = DatabaseManager()
//    database.open()
    
//    let query = """
//      CREATE TABLE dinos (
//      id INTEGER PRIMARY KEY,
//      name VARCHAR(51)
//      );
//      INSERT INTO dinos (name)
//      VALUES ('diplodicus''s'), ('diplodicus'), ('Joel'), ('DiploJoel');
//    """
//
//    database.exec(sql: query)
    
//    let query = """
//    SELECT * FROM dinos;
//    """
//
//    let rows = database.select(sql: query)
//    print(rows)
//
//    database.close()
    
//    let money = 100
    let money2 = NSDecimalNumber(string: "1.00")
    money2.multiplying(by: 100).intValue
    
    let date = Date()
    let timestamp = date.timeIntervalSince1970
    
    let formatter = DateFormatter()
    formatter.dateFormat = "YYYY-MM-dd"
    let formattedDate = formatter.string(from: date)
    
    print(formattedDate)
    print(timestamp)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

