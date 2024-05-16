// import 'package:flutter/material.dart';
// main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key}) // buena practica agregar key a tus widgets

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(child: Text('Hola mundo jaja')),
//       ),
//     );
//   }

// }

import 'package:flutter/material.dart';
import 'package:hello_world/presentation/screens/counter/counter_functions_screen.dart';
import 'package:hello_world/presentation/screens/counter_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // buena practica agregar key a tus widgets

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.purple), // paleta de colores!
        home: const CounterFunctionsScreen());
  }
}
