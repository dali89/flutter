import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';
import 'package:helloworld/home.dart';

class Registration extends StatelessWidget {
  Registration({super.key});
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text("Registration"),
        ),
        body: Column(children: [
          SizedBox(
            height: 100,
          ),
          FunTextField(controller: nameController, lable: 'name', hint: 'name'),
          // TextField(
          //     controller: nameController,
          //     decoration: InputDecoration(hintText: "name")),
          FunTextField(
              controller: phoneController, lable: 'phone', hint: 'phone'),
          // TextField(
          //     controller: phoneController,
          //     decoration: InputDecoration(hintText: "phone")),
          FunTextField(
              controller: emailController, lable: 'email', hint: 'email'),
          // TextField(
          //     controller: emailController,
          //     decoration: InputDecoration(hintText: "emaol")),
          FunTextField(
              controller: addressController, lable: 'address', hint: 'address'),
          // TextField(
          //     controller: addressController,
          //     decoration: InputDecoration(hintText: "address")),
          ElevatedButton(
              onPressed: () {
                Map<String, String> data = {
                  "name": nameController.text.toString(),
                  "phone": phoneController.text.toString(),
                  "email": emailController.text.toString(),
                  "address": addressController.text.toString()
                };

                print(data);
                print(nameController.text);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: const Text("Registration"))
        ]));
  }
}