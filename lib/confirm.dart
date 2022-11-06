import 'package:flutter/material.dart';

class confirm extends StatelessWidget {
  const confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Confirm Orders"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Thanks For Purchasing this Order",
              style: TextStyle(
                  color: Color.fromARGB(255, 72, 201, 138),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
