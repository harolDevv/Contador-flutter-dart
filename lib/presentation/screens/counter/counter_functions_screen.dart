import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int plusValue = 1;
  int clickCounter = 0;
  List buttons = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Functions'), actions: [
        IconButton(
          icon: const Icon(Icons.refresh_rounded), //Widget para mostrar iconos
          onPressed: () {
            setState(() {
              clickCounter = 0;
            });
          },
        ),
      ]),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Numero de click${clickCounter == 1 ? '' : 's'}', // click clicks
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Text(
            '$clickCounter',
            style: const TextStyle(fontSize: 200, fontWeight: FontWeight.w100),
          ),
        ],
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() => clickCounter = 0);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() => clickCounter++);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                if (clickCounter == 0) return;
                clickCounter--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 0,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}


// import 'package:flutter/material.dart';

// class CounterScreen extends StatelessWidget {
//   const CounterScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Counter Screen'),
//       ),
//       body: const Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Numero de clicks',
//             style: TextStyle(fontSize: 20, color: Colors.grey),
//           ),
//           Text(
//             '10',
//             style: TextStyle(fontSize: 200, fontWeight: FontWeight.w100),
//           ),
//         ],
//       )),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.plus_one),
//       ),
//     );
//   }
// }
