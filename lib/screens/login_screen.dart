import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  static String id='LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
          SizedBox(height: height*.1,),

          CustomTextField(hint: 'Enter Your Email', icon: Icons.email,   ),
          SizedBox(height: height*.04,),

          CustomTextField(hint: 'Enter Your Password', icon: Icons.lock,   ),
          SizedBox(height: height*.06,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 125),
            child: OutlinedButton(

              onPressed: (){},
                child: Text('Login'
                ,style: TextStyle(
                    color: Colors.white
                  ),
                ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
            ),
          ),
          SizedBox(height: height*.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dont Have an Account ?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),),
              Text('Sign In',
    style: TextStyle(
    fontSize: 16
    ),),

            ],
          ),

        ],
      ),
    );
  }
}

