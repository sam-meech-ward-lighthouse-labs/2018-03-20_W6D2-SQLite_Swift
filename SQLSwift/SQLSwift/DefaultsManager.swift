//
//  DefaultsManager.swift
//  SQLSwift
//
//  Created by Sam Meech-Ward on 2018-03-20.
//  Copyright © 2018 meech-ward. All rights reserved.
//

import Foundation

struct DefaultsManager {
  
  static let versionKey = "sql-version-loaded"
  
  static private var defaults: UserDefaults {
    get {
      return UserDefaults.standard
    }
  }
  
  static func checkVersion() -> Int {
    return defaults.integer(forKey: versionKey)
  }
  
  static func update(version: Int) {
    defaults.set(version, forKey: versionKey)
  }
}
