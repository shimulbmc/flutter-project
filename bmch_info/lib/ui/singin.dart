
import 'package:bmch_info/ui/app_route_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class SingIn extends StatelessWidget {
  final emailController= TextEditingController();
  final passwordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:  EdgeInsets.only(right: 14.0,left: 14.0),
        child: Column(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 250.0,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    
                    text: 'Code',
                    style: TextStyle(
                      color: Colors.amber,fontSize: 70.0,fontWeight: FontWeight.w700,
                      ),
                  children: [
                     TextSpan(
                    
                    text: 'Can',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 70.0,fontWeight: FontWeight.w700,
                      ),),
                       TextSpan(
                    
                    text: 'Do',
                    style: TextStyle(
                      color: Colors.red,fontSize: 70.0,fontWeight: FontWeight.w700,
                      ),),
                  ],
                  
                  ),
                  
                  ),
              ),
            ),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                hintText: 'Enter Email',
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
             TextField(
               controller: passwordController,
               obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                hintText: 'Enter Password',
                labelText: 'Password',
                 prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed:() {
              print(emailController.text);
               print(passwordController.text);
               emailController.clear();
               passwordController.clear();
              
            } , 
            child: Text('Login') ,),
            TextButton(onPressed: () {
              Navigator.pushNamed(context, AppRoutePath.signUpPage);
              
            }, 
            child: Text('Regitraton')),

          ],
        ),
      ),
      
    );
  }
}