<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

A simple package to check the device is connected (connectivity) to internet or not.


## Usage

dependencies:
  internet_check: ^0.0.1

'''dart

bool isOnline = await Internet().check();

if(!isOnline) {

/// There is no internet connection now.
/// Display toast or error message "Please check internet and trt again"

return false;
}

await /// Call Api or other task

return true

'''




