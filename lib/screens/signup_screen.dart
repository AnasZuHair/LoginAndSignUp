import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_signup_ui/screens/login_scrren.dart';


// ignore: non_constant_identifier_names
Widget Spacing(double val){
  return SizedBox(
    height: val,
  );
}

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // ignore: deprecated_member_use
        backwardsCompatibility: false,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 180,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/e4_signup_top.png',
                  fit: BoxFit.fitWidth,),
              ),
              Spacing(20),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
                ),
                Spacing(20),
                 Center(
                   child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const  [
                            CustomButtonSocial(
                              image: 'assets/images/e4_google.png',
                            ),
                            CustomButtonSocial(
                              image: 'assets/images/e4_facebook.png',
                            ),
                            CustomButtonSocial(
                              image: 'assets/images/e4_apple.png',
                            ),
                          ],
                        ),
                 ), 
                Form(
                  child:Column(
                    children:  [
                      Spacing(20),
                       const Text(
                        'Or register with email',
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black38
                        ),
                      ),

                      const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.mail),
                          hintText: 'Email',

                        ),
                      ),
                      Spacing(10),
                       const TextField(
                        decoration: InputDecoration(
                          prefixIcon:Icon(CupertinoIcons.lock_shield_fill),
                          hintText: 'Password',
                        ),
                      ),
                      Spacing(10),
                       const TextField(
                        decoration: InputDecoration(
                          prefixIcon:Icon(CupertinoIcons.person),
                          hintText: 'Full name',
                        ),
                      ),
                      Spacing(10),
                       const TextField(
                        decoration: InputDecoration(
                          prefixIcon:Icon(CupertinoIcons.home),
                          hintText: 'Company name',
                        ),
                      ),
                      Spacing(30),
                      CustomButton(
                        backColor: Colors.lightBlue[800]!,
                        text: 'Login',
                        textColor: Colors.white,
                        onTap: (){},
                      ),
                     Spacing(20),
                      Wrap(
                        spacing: 3,
                        children:  [
                        const Text(
                        'Already have iThickLogistics account?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black38
                        ),),
                        Material(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, 
                              MaterialPageRoute(
                                builder:(context) => const LoginScreen() ));
                            },
                            child: Text(
                        ' Login',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.lightBlue[900]!,
                        ),),
                          ),
                        ),
                        ],
                      ),
                     
                    ],
                  )
                  ),           
            ],
          ),
        ),
        ),
    );
  }
}











class CustomButtonSocial extends StatelessWidget {
  final String image;
  const CustomButtonSocial({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
  child: InkWell(
    borderRadius: BorderRadius.circular(10),
    onTap: (){},
    child: Container(
      padding: const  EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.5, 
        ),
      ),
      child: Image.asset(
        image,
        height: 20,
        width: 20,),
    ),
                        ),
                      );
  }
}

class CustomButton extends StatelessWidget {
  final Color backColor;
  final String text;
  final Color textColor;
  final GestureTapCallback? onTap;


  const CustomButton({
     Key? key,
     required this.backColor,
     required this.text,
     required this.textColor, this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: backColor,
      child: InkWell(
        // ignore: prefer_if_null_operators
        onTap: onTap != null ? onTap : (){},
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(17),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
            ),),
        ),
      ),
    );
  }
}