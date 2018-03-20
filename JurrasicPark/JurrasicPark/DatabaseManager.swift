//
//  DatabaseManager.swift
//  JurrasicPark
//
//  Created by Sam Meech-Ward on 2018-03-20.
//  Copyright © 2018 meech-ward. All rights reserved.
//

import UIKit
import SQLite3

class DatabaseManager: NSObject {
  
  var database: OpaquePointer?
  
  func open() {
    let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("database.db")
    
    let status = sqlite3_open(fileURL.path, &database)
    
    if status != SQLITE_OK {
      print("Error opening")
      return
    }
  }

  func close() {
    let status = sqlite3_close(database)
    if status != SQLITE_OK {
      print("Error closing")
      return
    }
  }
  
  func exec (sql: String) {
    let status = sqlite3_exec(database, sql, nil, nil, nil)
    if status != SQLITE_OK {
      print("Error creating")
//      throw
      return
    }
  }
  
  func select(sql: String) -> [[String: String]] {
    
    // Create a new query statment
    var queryStatement: OpaquePointer? = nil
    let prepareStatus = sqlite3_prepare_v2(database, sql, -1, &queryStatement, nil)
    
    if prepareStatus != SQLITE_OK {
      let errmsg = String(cString: sqlite3_errmsg(database)!)
      print("perpare error: \(errmsg)")
    }
    
    let numberOfColumns = sqlite3_column_count(queryStatement)
    
    var rows = [[String: String]]()
    while(sqlite3_step(queryStatement) == SQLITE_ROW) {
      
      var row = [String: String]()
      
      for i in 0..<numberOfColumns {
        let columnName = String(cString: sqlite3_column_name(queryStatement, Int32(i)))
        let columnText = String(cString: sqlite3_column_text(queryStatement, Int32(i)))
        
        row[columnName] = columnText
      }
      
      rows.append(row)
    }
    
    // We shoule have an array of all the rows as dictionaries
    if sqlite3_finalize(queryStatement) != SQLITE_OK {
      print("Error")
    }
    
    return rows
  }
}
