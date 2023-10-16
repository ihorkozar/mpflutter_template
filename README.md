# MPFlutter project template

This repository is an MPFlutter engineering shell template. You can download this repository, remove
unnecessary parts as needed, and then start development.

In the root directory, weapp is the WeChat applet project, and web is the H5 project. If you do not
need the corresponding output terminal, you can remove it.

## Flutter version requirements

The master branch of this template requires Flutter version >= 3.7.0.

If your Flutter version < 3.7.0, please use the flutter_3.3.0 branch.

## Environment preparation

At least the following development environment is required

- Operating system: macOS / Windows / Linux any operating system
- Code editor: VSCode
- VSCode extensions: Dart and Flutter
- Flutter development environment
- Chrome browser

The Flutter development environment can be downloaded and installed at https://flutter.dev
or https://flutter-io.cn.

## Development

1. Use Git clone or download this repository directly, and use VSCode to open the root directory of
   this repository.
2. Use the command line, locate to the root directory of this warehouse, and execute the
   command `./mpflutter packages get` (*emphasis added, here we execute ./mpflutter instead of
   flutter*).
3. Press the 'F5' key on the keyboard to start debugging. The following output will appear on the
   debugging console of VSCode.

```
Connecting to VM Service at http://127.0.0.1:61276/OgoUGNgV_fE=/
lib/main.dart: Warning: Interpreting this as package URI, 'package:mpflutter_template/main.dart'.
Hot reloading enabled
Listening for file changes at ./lib
Serve on 0.0.0.0:9898
Use browser open http://0.0.0.0:9898/index.html or use MiniProgram Developer Tools import './dist/weapp' for dev.
```

4. Open the Chrome browser and enter the URL http://0.0.0.0:9898/index.html. If nothing unexpected
   happens, you will see the Hello, MPFlutter! prompt.
5. Open `lib/main.dart` in VSCode, try to modify the Hello, MPFlutter! text, and save it to see if
   Hot-Reload can be implemented?
6. If there are no problems, you can start business development in the lib directory.

### WeChat Mini Program

If you need to implement development and debugging capabilities in WeChat mini programs, you can
directly import the weapp directory into the "WeChat Developer Tools".

You can also modify the files in the weapp directory to achieve customized functions.

## Construct

### H5

Use the command line tool of the operating system to locate the project root directory and execute
the following command.

```sh
dart scripts/build_web.dart
```

After the execution is completed, the H5 product is in the build directory and you can upload it to
the HTTP server for use.

### WeChat Mini Program

Use the command line tool of the operating system to locate the project root directory and execute
the following command.

```sh
dart scripts/build_weapp.dart
```

After the execution is completed, the WeChat applet product is in the build directory. You can open
the "WeChat Developer Tools" and import the build directory for further compilation, testing and
uploading for review.