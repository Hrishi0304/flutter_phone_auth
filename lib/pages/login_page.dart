import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Expanded(
                  child: Image.asset(
                      "images/login.png",
                      fit: BoxFit.cover,
                  )),
              Column(
                children: [
                  Text(
                    "Welcome Back 👋",
                    style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700 ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter you phone number to continue."),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixText: "+91 ",
                          labelText: "Enter your phone number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32)
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text("Send OTP"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            foregroundColor: Colors.black
                        ),
                      ),
                    ),
                    ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

