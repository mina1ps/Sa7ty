import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Sign in'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/4.png'), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200),
            ),
            Text(
              'Reset Password',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),SizedBox(height: 30,),
            Text(
              ''
              'Please enter your email address \n to request a password reset',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: 380,
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your email or phone',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.white))),
              ),
            ),SizedBox(height: 50,),
            Container(child: Text('Reset password',textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 25,),),alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.pinkAccent),
              width: 200,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
