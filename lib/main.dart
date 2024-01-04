
//1
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Platform Button Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: PlatformButtonsPage(),
//     );
//   }
// }

// class PlatformButtonsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Platform Buttons'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 // Aktion für den Material Design-Button
//               },
//               style: ElevatedButton.styleFrom(
//                 primary: Color.fromARGB(255, 215, 242, 186), // Hintergrundfarbe ändern
//               ),
//               child: Text('Material Button'),
//             ),
//             SizedBox(height: 16),
//             CupertinoButton(
//               onPressed: () {
//                 // Aktion für den Cupertino-Button
//               },
//               color: CupertinoColors.activeBlue, // Hintergrundfarbe ändern
//               child: Text('Cupertino Button'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//2

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// class PlatformSpecificIcon extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Überprüfen, ob die Plattform Android ist
//     bool isAndroid = Theme.of(context).platform == TargetPlatform.android;

//     return Center(
//       child: isAndroid
//           ? Icon(
//               Icons.android,
//               size: 50.0,
//               color: Colors.green,
//             )
//           : Icon(
//               CupertinoIcons.app,
//               size: 50.0,
//               color: Colors.blue,
//             ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plattformspezifisches Icon'),
//         ),
//         body: PlatformSpecificIcon(),
//       ),
//     ),
//   );
// }


//3

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Example'),
      ),
      body: const Center(
        child: Text('Content of the current page'),
      ),
      bottomNavigationBar: 
        Theme.of(context).platform == TargetPlatform.iOS
            ? CupertinoTabBar(
                items: <BottomNavigationBarItem>[
                  const BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home),
                    label: 'Home',
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.settings),
                    label: 'Settings',
                  ),
                ],
              )
            : BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.home),  // Android-Symbol
                    label: 'Home',
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.settings),  // Android-Symbol
                    label: 'Settings',
                  ),
                ],
              ),
    );
  }
}