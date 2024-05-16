import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int plusValue = 1;
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => clickCounter += plusValue);
          // clickCounter += 1;
          // setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
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
