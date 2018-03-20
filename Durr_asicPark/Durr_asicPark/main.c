//
//  main.c
//  Durr_asicPark
//
//  Created by Sam Meech-Ward on 2018-03-20.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#include <stdio.h>
#include <sqlite3.h>

int main(int argc, const char * argv[]) {

  sqlite3 *database;
  int status = sqlite3_open("/Users/Sam/Desktop/SwiftySQL/database.db", &database);
  
  if (status != SQLITE_OK) {
    printf("Error opening database");
    return 0;
  }
  
  // No error and an open database
  
  // All of your queries CRUD
  char *query =
  "CREATE TABLE dinos ("
  "id INTEGER PRIMARY KEY,"
  "name VARCHAR(51)"
  "); "
  "INSERT INTO dinos (name)"
  "VALUES ('diplodicus''s'), ('diplodicus'), ('Joel'), ('DiploJoel')";
  
  status = sqlite3_exec(database, query, NULL, NULL, NULL);
  if (status != SQLITE_OK) {
    printf("Error exec\n");
    return 0;
  }
  
  
  status = sqlite3_close(database);
  if (status != SQLITE_OK) {
    printf("Error closed database");
    return 0;
  }
  
  return 0;
}
