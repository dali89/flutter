import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';
import 'package:helloworld/registration.dart';

class Login extends StatelessWidget {
  Login({super.key});
  var nameController = TextEditingController();
  // text: "Aksoft");
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
      // The title text which will be shown on the action bar
      title: Text("Login"),
    );
    return Scaffold(
        appBar: appBar2,
        body: Column(children: [
          SizedBox(
            height: 200,
          ),
          FunTextField(
            controller: nameController,
            lable: 'name',
            hint: 'name',
          ),
          // TextField(
          //     controller: nameController,
          //     decoration: InputDecoration(hintText: "name")),
          FunTextField(
              controller: passwordController, lable: 'pass', hint: 'pass'),
          // TextField(
          //     controller: passwordController,
          //     decoration: InputDecoration(hintText: "pass")),
          ElevatedButton(
              onPressed: () {
                Map<String, String> data = {
                  "name": nameController.text.toString(),
                  "pass": passwordController.text.toString()
                };
                print(data);
                print(nameController.text);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Registration()));
                // Navigator.pop(context);
              },
              child: const Text("Login"))
        ]));
  }
}
