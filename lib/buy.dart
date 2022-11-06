import 'package:flutter/material.dart';
import 'package:flutter_profile_1/confirm.dart';

class buy extends StatelessWidget {
  const buy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dixcy Scott.PK"),
        ),
        body: Column(
          children: [
            Text(
              "Buy Now",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: "Dixcy Scott.PK:",
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: ((value) {
                        return value!.isEmpty ? "Enter your Name" : null;
                      }),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "0300-*********:",
                        labelText: "Contact_Number",
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: ((value) {
                        return value!.isEmpty
                            ? "Enter the Contact_Number"
                            : null;
                      }),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        hintText: "Enter the Street_Address:",
                        labelText: "Address",
                        prefixIcon: Icon(Icons.add_home_work),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: ((value) {
                        return value!.isEmpty
                            ? "Enter the Street_Address"
                            : null;
                      }),
                    ),
                    SizedBox(height: 30),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return confirm();
                        }));
                      },
                      child: Text("Confirm Order"),
                      textColor: Colors.white,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
