import 'package:alixe_net_analysis/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginManager extends StatefulWidget {
  const LoginManager({Key? key}) : super(key: key);

  @override
  State<LoginManager> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginManager> {
  final TextEditingController _passcode = TextEditingController();

  //validation key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Globals.themeColor,
//appBar: AppBar(),
        body: Stack(
          
          children: [
             // Background image
          Image.asset(
            'assets/analysis.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
            Form(
                key: _formKey,
                child: Container(
            //color: Colors.grey,
            padding:const EdgeInsets.all(40),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "AliXe Server Diagnosis Software.",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 26,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                const  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _passcode,
                    autofocus: true,
                    autocorrect: false,
                    obscureText: true,
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password, color: Colors.green),
                        hintStyle: const TextStyle(color: Colors.black87),
                        hintText: "Enter passcode",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter valid passcode.";
                      }
                      return null;
                    },
                  ),
                 const SizedBox(height: 10),
                 
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(16.0))),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if(_passcode.text == 'alixe326'){
                            Get.offAll(const MyHomePage(title: "AliXe Server"));
            
                          }
                          
                        }
                      },
                      child: const Text(
                        "  LogIn     ",
                        style: TextStyle(color: Colors.black38),
                      ),
                    ),
                  ),
                const  SizedBox(
                    height: 10,
                  ),
                ]),
                ),
              ),
          ],
        ));
  }
}
