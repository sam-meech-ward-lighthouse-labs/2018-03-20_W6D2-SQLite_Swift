# SQLite in Swift

## C APIs

* The `SQLite3` library is written in C
* It's non object oriented.
* It uses explicit memory management. 
* Cool for loop. (int i = 0; i < num; ++i)
* C code will work on almost anything.
* Kernels are written in C.
* It's very very very very very fast.
* You can write bad C code very very very very easily. fast. 

```c
struct ChocolateBison {
  int legs;
  char *tastyHorns;
  bool isDark;
  bool isChocolate;
}

int createChocolateBison(ChocolateBison **chocolate) {
  &chocolate = malloc(sizeOf(ChocolateBison));
  chocolate.legs = 4;
  chocolate.isDark = false;
  chocolate.isChocolate = true;
  return 0;
}


int status = eat(chocolate);

int eat(ChocolateBison *chocolate) {
  return 0;
}
```


```c
ChocolateBison *bison;
int status = createChocolateBison(&bison);
if (status != 0) {
  // error to handle
}

status = eat(bison);
```

```objective-c
NSError *error;
NSFile *file = [NSFile openFile:@"url" error:&error];

if (error) {

}
```

## C APIs in Swift

[Pointers](https://developer.apple.com/library/content/documentation/Swift/Conceptual/BuildingCocoaApps/InteractingWithCAPIs.html#//apple_ref/doc/uid/TP40014216-CH8-ID17)

## SQLite in C & Swift

* Monetery values
* Dates

## Links

* [SQLite3 C API](https://www.sqlite.org/capi3ref.html)
* [NSUserDefaults](https://developer.apple.com/documentation/foundation/userdefaults)
* [Swift: Interacting with C APIs](https://developer.apple.com/library/content/documentation/Swift/Conceptual/BuildingCocoaApps/InteractingWithCAPIs.html#//apple_ref/doc/uid/TP40014216-CH8-ID17)
* [SQLite.swift](https://github.com/stephencelis/SQLite.swift)