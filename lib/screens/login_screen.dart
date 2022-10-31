import 'package:ecommerce/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String id='LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:KMainColor ,
      body: ListView(
        children: <Widget> [
         Padding(
           padding: const EdgeInsets.only(top: 75),
           child: Container(

             height: MediaQuery.of(context).size.height*.2,
             child: Stack(
               alignment: Alignment.center,
               children:const <Widget> [
                 Image(

                   image: AssetImage('images/icons/shop.png'),
                 ),
                 Positioned(
                   bottom: 0,
                   child: Text('Buy it',
                     style: TextStyle(
                       fontFamily: 'Pacifico',
                         color: Colors.black,
                         fontSize: 20
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
          CustomTextField(   ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: KSecondary,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Colors.white
                  ),
                ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                    color: Colors.white
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        cursorColor: KMainColor,
        decoration: InputDecoration(
          hintText: 'Enter Email',
          prefixIcon:const Icon(
            Icons.email,
            color: KMainColor,
          ) ,
          filled: true,
          fillColor: KSecondary,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.white
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
