
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
              text: 'Si',
              style: TextStyle(color: Colors.yellow,fontSize: 30.0),
            ),
            ),
             RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
              text: 'gn',
              style: TextStyle(color: Colors.green,fontSize: 30.0),
            ),
            ),
             RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
              text: 'up',
              style: TextStyle(color: Colors.black,fontSize: 30.0),
            ),
            ),
            SizedBox(height:100.0),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              hintText: 'Enter Your Email',
              labelText: 'Email',
              prefixIcon: Icon(Icons.email),
               ),
            ),
            SizedBox(height: 10.0,),
              TextField(
                controller: passwordController,
                obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              hintText: 'Enter Your Password',
              labelText: 'Password',
              prefixIcon: Icon(Icons.lock),
               ),
            ),
            SizedBox(height: 14.0,),
            ElevatedButton(onPressed: (){
              print(emailController.text);
               print(passwordController.text);
               emailController.clear();
               passwordController.clear();
            }  ,
             child: Text('Submit'),),
          ],

        ),
        
        ),
      ),
      
    );
  }
}