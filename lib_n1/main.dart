import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Text("Haha"
//             " World k cha bhai haru mula"),
//       ),
//     ),
//   );
// }

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I am rich"),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Image(
            // image: NetworkImage(
            //     'https://designshack.net/wp-content/uploads/best-watercolor-backgrounds.jpg'),
            image: AssetImage('images/crystal.jpg'),
          ),
        ),
      ),
    ),
  );
}
